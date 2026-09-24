--visualizacion--

SELECT * FROM dbo.ventas;
SELECT * FROM dbo.clientes;
SELECT * FROM dbo.productos;
SELECT * FROM categorias;

--consulta1--

SELECT
clientes.nombre,
ventas.cantidad,
ventas.precio_unitario,
(cantidad*precio_unitario) AS total_facturado
FROM ventas
INNER JOIN clientes 
ON ventas.id_cliente = clientes.id_cliente 

--consulta2--

SELECT
clientes.nombre,
ventas.cantidad
FROM clientes
LEFT JOIN ventas
ON clientes.id_cliente = ventas.id_cliente
WHERE ventas.cantidad IS NULL

--consulta3--

SELECT
productos.nombre_producto,
productos.id_categoria,
productos.precio,
ventas.cantidad
FROM productos
LEFT JOIN ventas
ON ventas.id_producto = productos.id_producto
WHERE ventas.cantidad IS NULL

--consulta4--

SELECT
fecha_venta,'periodo1' AS periodo,
cantidad*precio_unitario AS total
FROM ventas
WHERE fecha_venta BETWEEN '2024-03-05' AND '2024-03-08' 

UNION ALL

SELECT
fecha_venta,'periodo2' AS periodo,
cantidad*precio_unitario AS total
FROM ventas
WHERE fecha_venta BETWEEN '2024-03-10' AND '2024-03-15'
