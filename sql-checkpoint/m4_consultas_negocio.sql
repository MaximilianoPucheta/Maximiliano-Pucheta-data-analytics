SELECT
    MONTH(fecha_venta) AS Mes,
    SUM(cantidad * precio_unitario) AS Total_Facturado,
    COUNT(*) AS Cantidad_Pedidos,
    AVG(cantidad * precio_unitario) AS Ticket_Promedio
FROM ventas
GROUP BY MONTH(fecha_venta)
ORDER BY Mes;


SELECT TOP 5
    id_producto AS Producto,
    SUM(cantidad) AS Unidades_Vendidas,
    SUM(cantidad * precio_unitario) AS Total_Facturado
FROM ventas
GROUP BY id_producto
ORDER BY Total_Facturado DESC;


SELECT
    id_cliente AS Cliente,
    COUNT(*) AS Cantidad_Pedidos,
    SUM(cantidad * precio_unitario) AS Total_Gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY Total_Gastado DESC;

SELECT
    MONTH(fecha_venta) AS Mes,
    SUM(cantidad * precio_unitario) AS Total_Facturado,
    CASE
        WHEN SUM(cantidad * precio_unitario) >
        (
            SELECT AVG(Total_Mes)
            FROM
            (
                SELECT
                    SUM(cantidad * precio_unitario) AS Total_Mes
                FROM ventas
                GROUP BY MONTH(fecha_venta)
            ) AS Promedios
        )
        THEN 'Por encima'
        ELSE 'Por debajo'
    END AS Comparacion
FROM ventas
GROUP BY MONTH(fecha_venta)
ORDER BY Mes;


-- HALLAZGOS
-- 1. El producto 1 fue el de mayor facturación, con $3600, representando aproximadamente el 56% de la facturación total.
-- 2. El cliente 1 fue el cliente recurrente con mayor gasto, con 2 pedidos y un total gastado de $2640.
-- 3. En el período analizado se registraron 10 pedidos, todos correspondientes al mes de marzo, con una facturación total de $6444 y un ticket promedio de $644,40.