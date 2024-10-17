const fs = require("fs");
const path = require("path");
const fastcsv = require("fast-csv");

// Función para procesar un archivo SQL
const processSQLFile = (filePath) => {
    // Intenta leer el archivo con diferentes codificaciones
    let sqlData;
    try {
        sqlData = fs.readFileSync(filePath, "utf16le"); // Intenta con UTF-16LE
        console.log(`Archivo leído con UTF-16LE: ${filePath}`);
    } catch (err) {
        try {
            sqlData = fs.readFileSync(filePath, "utf-8"); // Intenta con UTF-8
            console.log(`Archivo leído con UTF-8: ${filePath}`);
        } catch (err) {
            console.error(`Error al leer el archivo ${filePath}:`, err);
            return null;
        }
    }

    // Expresión regular para extraer el CREATE TABLE y los encabezados de columnas
    const createTableRegex = /CREATE TABLE\s+[\w.]+\s*\((.*?)\)/is;
    const createMatch = createTableRegex.exec(sqlData);

    let headers = [];
    if (createMatch) {
        headers = createMatch[1].split(",").map((col) =>
            col
                .trim()
                .split(" ")[0]
                .replace(/[`"\[\]]/g, "")
        ); // Extraer nombres de columnas
        console.log(`Encabezados extraídos: ${headers.join(", ")}`);
    } else {
        console.warn(
            `No se encontraron encabezados en el archivo: ${filePath}`
        );
        return null;
    }

    // Expresión regular para extraer las filas INSERT INTO
    const insertRegex = /INSERT INTO\s+\w+\s+VALUES\s+\((.*?)\);/gi;
    let match;
    const rows = [];

    // Extraer todas las filas INSERT INTO
    while ((match = insertRegex.exec(sqlData)) !== null) {
        const valuesString = match[1];
        // Manejar posibles comas dentro de los valores
        const values = [];
        let current = "";
        let insideString = false;

        for (let i = 0; i < valuesString.length; i++) {
            const char = valuesString[i];
            if (char === "'" && valuesString[i - 1] !== "\\") {
                insideString = !insideString;
            }
            if (char === "," && !insideString) {
                values.push(
                    current.trim().replace(/^'|'$/g, "").replace(/\\'/g, "'")
                );
                current = "";
            } else {
                current += char;
            }
        }
        if (current.length > 0) {
            values.push(
                current.trim().replace(/^'|'$/g, "").replace(/\\'/g, "'")
            );
        }

        rows.push(values);
    }

    console.log(
        `Total de filas extraídas en ${path.basename(filePath)}: ${rows.length}`
    );
    if (rows.length === 0) {
        console.warn(
            `No se encontraron filas INSERT INTO en el archivo: ${filePath}`
        );
        return null;
    }

    return { headers, rows };
};

// Función para convertir a CSV
const convertToCSV = (data, outputPath) => {
    const ws = fs.createWriteStream(outputPath);
    fastcsv
        .write(data.rows, { headers: data.headers })
        .on("finish", () => {
            console.log(`CSV generado en: ${outputPath}`);
        })
        .pipe(ws);
};

// Ruta de la carpeta que contiene los archivos SQL
const sqlFolderPath = path.join(__dirname, "sql-files");
const csvOutputFolderPath = path.join(__dirname, "output-csv");

// Crear carpeta de salida si no existe
if (!fs.existsSync(csvOutputFolderPath)) {
    fs.mkdirSync(csvOutputFolderPath);
}

// Leer todos los archivos SQL en la carpeta
fs.readdir(sqlFolderPath, (err, files) => {
    if (err) {
        return console.error("Error leyendo la carpeta:", err);
    }

    files.forEach((file) => {
        if (path.extname(file).toLowerCase() === ".sql") {
            const filePath = path.join(sqlFolderPath, file);
            const data = processSQLFile(filePath);

            if (data) {
                const outputFilePath = path.join(
                    csvOutputFolderPath,
                    path.basename(file, ".sql") + ".csv"
                );
                convertToCSV(data, outputFilePath);
            } else {
                console.warn(`No se generó CSV para el archivo: ${file}`);
            }
        }
    });
});
