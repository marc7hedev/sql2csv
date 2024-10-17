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
        console.error(
            `Error al leer el archivo con UTF-16LE: ${filePath}`,
            err
        );
        try {
            sqlData = fs.readFileSync(filePath, "utf-8"); // Intenta con UTF-8
            console.log(`Archivo leído con UTF-8: ${filePath}`);
        } catch (err) {
            console.error(
                `Error al leer el archivo con UTF-8: ${filePath}`,
                err
            );
            return null;
        }
    }

    // Expresión regular para extraer las filas INSERT INTO
    const insertRegex = /INSERT INTO\s+[\w.]+\s+VALUES\s+\((.*?)\);/gi;

    let match;
    const rows = [];
    let headers = [];

    // Opcional: Extraer nombres de columnas desde CREATE TABLE
    const createTableRegex = /CREATE TABLE\s+[\w.]+\s*\((.*?)\)/i;
    const createMatch = createTableRegex.exec(sqlData);
    if (createMatch) {
        headers = createMatch[1].split(",").map((col) =>
            col
                .trim()
                .split(" ")[0]
                .replace(/[`"\[\]]/g, "")
        ); // Limpiar posibles comillas o brackets
        console.log(`Encabezados extraídos: ${headers.join(", ")}`);
    } else {
        console.warn(
            `No se encontraron encabezados en el archivo: ${filePath}`
        );
        // Si no se encuentran encabezados, puedes definirlos manualmente o saltar
        // headers = ['CONTRACT', 'ADDRESS', 'ADDRESS_TYPE', 'CITY', 'REGION', 'POSTAL_CODE', 'COUNTRY'];
    }

    // Extraer todas las filas INSERT INTO
    while ((match = insertRegex.exec(sqlData)) !== null) {
        const valuesString = match[1];
        // Manejar posibles comas dentro de los valores usando una expresión regular más robusta
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
        // Añadir el último valor
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
                // Generar el nombre de archivo CSV manteniendo el nombre del archivo SQL
                const outputFilePath = path.join(
                    csvOutputFolderPath,
                    path.basename(file, ".sql") + ".csv"
                );

                // Convertir a CSV
                convertToCSV(data, outputFilePath);
            } else {
                console.warn(`No se generó CSV para el archivo: ${file}`);
            }
        }
    });
});
