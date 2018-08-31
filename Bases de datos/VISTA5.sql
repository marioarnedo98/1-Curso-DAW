--MOSTRAR CUANTO LE HA costado en total todos los pedidos
USE Jardineria;
GO
CREATE VIEW VISTA5 AS
SELECT Pedidos.CodigoCliente, Clientes.NombreCliente, (DetallePedidos.Cantidad*DetallePedidos.PrecioUnidad)
FROM Pedidos INNER JOIN Clientes
ON Pedidos.CodigoCliente=Clientes.CodigoCliente
INNER JOIN DetallePedidos
ON DetallePedidos.CodigoPedido=Pedidos.CodigoPedido
GROUP BY Clientes.NombreCliente, Pedidos.CodigoCliente, DetallePedidos.Cantidad, DetallePedidos.PrecioUnidad