# ESTUDIO SOBRE EL COMPORTAMIENTO CRIMINAL EN LA CIUDAD DE LOS ANGELES - CALIFORNIA DESDE 2020 HASTA 2024
El estudio analiza el comportamiento criminal en la ciudad de Los Ángeles, California, desde 2020 hasta 2024. 
Los objetivos principales incluyen la caracterización de las víctimas, la identificación de zonas calientes y la 
determinación de las temporadas más peligrosas. Utilizando la metodología CRISP-DM para la extracción y 
análisis de datos de los informes del Departamento de Policía de Los Ángeles (LAPD), se identificaron patrones 
delictivos. Los hallazgos revelan una mayor incidencia de crímenes en los primeros trimestres de cada año, con 
armas de fuego y cuchillos siendo las más comunes. Las conclusiones destacan la necesidad de políticas públicas 
basadas en evidencia para mejorar la seguridad ciudadana. 

## Integrantes

- Isaac Amín Sofán Hernández
- José Luis Córdoba Roldán

## Guía de Navegación del Repositorio

Estudio sobre el Comportamiento Criminal en la Ciudad de Los Ángeles (2020–2024)

### 1. Archivos principales

- `Crear_BD_DBIncidencias_crimenes_LA.sql`: crea la base de datos.
- `CrearTablasDBIncidencias_crimenes_LA.sql`: crea las tablas de trabajo.
- `Proce Alma Dimens Hechos Crimen LA.sql`: genera el modelo dimensional (hechos y dimensiones).
- `Link Base de Datos.txt`: contiene el enlace al dataset original (LAPD).
- `ExplorationETL_CrimesLA.ipynb`: realiza la exploración, limpieza y transformación de datos (ETL).
- `Reporte Crimen LA.pbix`: dashboard en Power BI con los resultados.
- `ESTUDIO SOBRE EL COMPORTAMIENTO CRIMINAL EN LA CIUDAD DE LOS ÁNGELES - CALIFORNIA DESDE 2020 HASTA 2024.pdf`: informe final del estudio.
- `ESTUDIO SOBRE EL COMPORTAMIENTO CRIMINAL EN LA CIUDAD DE LOS ÁNGELES - CALIFORNIA DESDE 2020 HASTA 2024.pptx`: presentación del proyecto.
- `README.md`: documento guía incluido en GitHub.

### 2. Flujo de trabajo de datos

El flujo de trabajo comienza con la obtención de datos de la Policía de Los Ángeles (LAPD), los cuales son descargados y renombrados a `crimesla.csv` (datos en bruto). Posteriormente, se realiza la limpieza y transformación de estos datos en el archivo `ExplorationETL_CrimesLA.ipynb`, generando una versión limpia `crimes.csv`. Esta versión limpia es importada en SQL Server, donde se diseña e implementa un modelo estrella de incidencias o hechos. Finalmente, se realiza la conexión de SQL Server a Power BI para la visualización final de los datos.

### 3. Orden recomendado de revisión

1.  **Comprender el proyecto:**
    - Leer el PDF (`ESTUDIO SOBRE EL COMPORTAMIENTO CRIMINAL...pdf`), sección 1 y 2.1, para conocer los objetivos y la metodología.
    - Revisar `Link Base de Datos.txt` para identificar la fuente de los datos (LAPD).
2.  **Explorar los datos:**
    - Abrir `ExplorationETL_CrimesLA.ipynb` y analizar la estructura, variables y calidad de los datos.
3.  **Preparar los datos:**
    - En el mismo notebook, seguir el proceso de limpieza y transformación de los datos.
4.  **Modelar la base de datos:**
    - Ejecutar en orden los scripts SQL:
        1.  `Crear_BD_DBIncidencias_crimenes_LA.sql`
        2.  `CrearTablasDBIncidencias_crimenes_LA.sql`
        3.  `Proce Alma Dimens Hechos Crimen LA.sql`
5.  **Evaluar el modelo:**
    - Verificar en SQL Server que las tablas estén creadas y relacionadas correctamente.
6.  **Implementar y visualizar resultados:**
    - Ejecutar el procedimiento `EXEC migracionDatos` para cargar la información.
    - Abrir `Reporte Crimen LA.pbix` para analizar las visualizaciones interactivas.
7.  **Revisar resultados finales:**
    - Consultar el informe PDF y la presentación PowerPoint con los hallazgos y conclusiones.

### 4. Herramientas utilizadas

-   **SQL Server:** modelado y carga de datos.
-   **Python (Jupyter Notebook):** análisis y limpieza de datos.
-   **Power BI:** visualización y análisis interactivo.
-   **Microsoft Office:** documentación y presentación final.