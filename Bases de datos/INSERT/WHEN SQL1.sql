use nba;
--Sacar el ganador de la temporada 98/99 si hay empate que salgan los dos
SELECT 'GANADOR'=
CASE
WHEN PUNTOS_LOCAL<puntos_visitante THEN equipo_visitante
WHEN puntos_local>puntos_visitante THEN equipo_local
ELSE 'EMPATE'
END
FROM partidos
WHERE temporada LIKE '98/99';

USE Jardineria;
--MODIFICAR EL PRECIO DE VENTA PARA QUE TENGA COMO MINIMO UN 20% DE BENEFICIO 
SELECT 'BENEFICIO' =
CASE
WHEN PrecioVenta-PrecioProveedor< PrecioProveedor*0.1 THEN PrecioProveedor*1.2
ELSE PRECIOVENTA
END
FROM Productos;

--Se valoren los clientes en: regular cuando han realizado menos o igual de 5, normal si ha realizado entre seis y 10 y si ha realizado mas es bueno, indicando tambien el codigo cliente
SELECT pedidos.CodigoCliente,COUNT(pedidos.CodigoCliente) AS CONTADOR,'CALIFICACION' =
CASE
WHEN Clientes.CodigoCliente NOT IN (SELECT Pedidos.CodigoCliente FROM Pedidos) THEN 'NO TIENE PEDIDOS' 
WHEN COUNT(pedidos.CodigoCliente)<=5 THEN 'REGULAR'
WHEN COUNT(pedidos.CodigoCliente) BETWEEN 6 AND 10 THEN 'NORMAL'
WHEN COUNT (pedidos.CodigoCliente)>10 THEN 'BUENO'
END
FROM PEDIDOS RIGHT join Clientes
ON Pedidos.CodigoCliente=Clientes.CodigoCliente
GROUP BY Pedidos.CodigoCliente, Clientes.CodigoCliente;


SELECT Clientes.CodigoCliente, COUNT(Pedidos.CodigoCliente)
FROM Clientes LEFT JOIN Pedidos
ON Clientes.CodigoCliente=Pedidos.CodigoCliente
GROUP BY Clientes.CodigoCliente;

use compras;
SELECT 'PRECIO' =
CASE 
WHEN preunart IS NULL THEN 'NO ESTABLECIDO'
WHEN preunart < 10 THEN Pedidos.ivaped*20
WHEN preunart <20 THEN Pedidos.ivaped *30
ELSE 'ALTO'
END, descrart
FROM ARTICULOS INNER JOIN Pedidos;
