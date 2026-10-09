# RetailPro — Proyecto de Data Analytics

Proyecto desarrollado durante el curso de Data Analytics de Coderhouse.

El objetivo del proyecto es analizar la información comercial de **RetailPro**, una empresa ficticia dedicada a la venta de productos tecnológicos, utilizando SQL Server y Power BI para transformar datos de ventas, clientes, productos y categorías en información útil para la toma de decisiones.

---

## Objetivo del proyecto

El proyecto busca construir un flujo de análisis de datos que permita:

- Organizar y relacionar los datos comerciales de RetailPro.
- Consultar información de ventas mediante SQL.
- Identificar productos y clientes relevantes para el negocio.
- Analizar facturación, cantidad de pedidos y ticket promedio.
- Comparar canales, períodos y categorías.
- Construir un modelo de datos y visualizaciones en Power BI.

---

## Herramientas utilizadas

- **SQL Server**: creación de tablas, carga y consulta de datos.
- **SQL Server Management Studio (SSMS)**: ejecución y validación de consultas SQL.
- **Power BI**: modelado de datos, creación de medidas DAX y dashboards.
- **DAX**: creación de medidas e indicadores dentro de Power BI.
- **GitHub**: almacenamiento y documentación de los entregables del proyecto.

---

## Contenido del repositorio

### `sql-checkpoint/`

Contiene los scripts SQL desarrollados durante el proyecto.

Entre las operaciones realizadas se incluyen:

- Creación de tablas.
- Definición de claves primarias y foráneas.
- Inserción de datos.
- Consultas con `SELECT`.
- Funciones de agregación como `SUM`, `AVG` y `COUNT`.
- Uso de `GROUP BY` y `HAVING`.
- Rankings mediante `ORDER BY` y `TOP`.
- Consultas con `CASE WHEN`.
- Relaciones entre tablas mediante `JOIN`.
- Consolidación de resultados con `UNION ALL`.

### `Pipeline_ETL_Pucheta_Maximiliano.pbix`

Archivo de Power BI correspondiente al proceso de transformación, modelado y análisis de los datos.

### `Pucheta_Maximiliano_Checkpoint2.pbix`

Archivo de Power BI correspondiente al checkpoint del modelo de datos, relaciones y medidas DAX.

---

## Modelo de datos

El proyecto trabaja principalmente con entidades relacionadas con:

- **Clientes**
- **Productos**
- **Categorías**
- **Ventas**
- **Fechas**

La tabla de ventas funciona como tabla central del análisis y se relaciona con las tablas de dimensión mediante identificadores como `id_cliente` e `id_producto`.

Esta estructura permite analizar las ventas desde distintas perspectivas sin repetir innecesariamente la información de clientes o productos.

---

## Principales métricas analizadas

Durante el proyecto se trabajó con indicadores como:

- Facturación total.
- Cantidad de pedidos.
- Ticket promedio.
- Unidades vendidas por producto.
- Facturación por producto.
- Gasto por cliente.
- Clientes recurrentes.
- Evolución de ventas por período.
- Comparaciones entre canales de venta.

---

## Ejecución de los scripts SQL

Los scripts fueron desarrollados para **Microsoft SQL Server**.

### 1. Abrir SQL Server Management Studio

Conectarse a una instancia de SQL Server.

### 2. Crear o seleccionar la base de datos

Seleccionar la base de datos destinada al proyecto RetailPro.

Ejemplo:

```sql
USE Ventas_Tech_DB;

------ Agregados por mi---------

3. Ejecutar primero los scripts de creación de tablas
Las tablas deben crearse respetando sus dependencias.
Por ejemplo, una tabla como productos debe existir antes de crear una clave foránea desde ventas que la referencie.
4. Cargar los datos
Ejecutar las sentencias INSERT correspondientes a cada tabla.
Las tablas independientes deben cargarse antes que aquellas que contienen claves foráneas.
5. Ejecutar las consultas analíticas
Una vez creadas y cargadas las tablas, pueden ejecutarse las consultas de análisis incluidas en la carpeta sql-checkpoint.
Ejemplo:
