const fs = require("fs");
const path = require("path");
const fastcsv = require("fast-csv");

// Función para procesar un archivo SQL
const processSQLFile = (filePath) => {
    const sqlData = fs.readFileSync(filePath, "utf-8");

    // Usamos una expresión regular para extraer las filas INSERT INTO
    const insertRegex = /INSERT INTO\s+\w+\s+VALUES\s+\((.*?)\);/gi;

    let match;
    const rows = [];
    const headers = [
        "CONTRACT",
        "ADDRESS",
        "ADDRESS_TYPE",
        "CITY",
        "REGION",
        "POSTAL_CODE",
        "COUNTRY",
    ]; // Nombres de columnas, ajusta según el archivo

    while ((match = insertRegex.exec(sqlData)) !== null) {
        // Extraemos los valores y quitamos comillas simples
        const values = match[1]
            .split(",")
            .map((val) => val.trim().replace(/'/g, ""));
        rows.push(values);
    }

    return { headers, rows };
};

// Función para convertir a CSV
const convertToCSV = (data, outputPath) => {
    const ws = fs.createWriteStream(outputPath);
    fastcsv.write(data.rows, { headers: data.headers }).pipe(ws);
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
        if (path.extname(file) === ".sql") {
            const filePath = path.join(sqlFolderPath, file);
            const data = processSQLFile(filePath);

            // Generar el nombre de archivo CSV manteniendo el nombre del archivo SQL
            const outputFilePath = path.join(
                csvOutputFolderPath,
                path.basename(file, ".sql") + ".csv"
            );

            // Convertir a CSV
            convertToCSV(data, outputFilePath);
            console.log(`CSV generado para ${file} en ${outputFilePath}`);
        }
    });
});
