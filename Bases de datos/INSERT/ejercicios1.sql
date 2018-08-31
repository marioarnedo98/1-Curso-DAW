USE Jardineria
--EJERC 1
DELETE FROM Clientes
WHERE CodigoCliente NOT IN 
(SELECT DISTINCT CodigoCliente FROM Pedidos)

--EJER2
UPDATE Productos SET PrecioVenta=PrecioVenta*1.2
WHERE NOT EXISTS (SELECT DISTINCT Productos.CodigoProducto
FROM DetallePedidos WHERE DetallePedidos.CodigoProducto=Productos.CodigoProducto)

--EJER3
DELETE FROM Pagos
WHERE CodigoCliente IN
(SELECT CODIGOCLIENTE FROM Clientes WHERE LimiteCredito=(SELECT MIN(LimiteCredito)FROM Clientes))

--EJER4
UPDATE Clientes SET LimiteCredito=0
WHERE CodigoCliente=(SELECT CodigoCliente FROM Pedidos A JOIN DetallePedidos B
ON A.CodigoPedido=B.CodigoPedido AND B.Cantidad=(SELECT MIN (CANTIDAD) FROM DetallePedidos
WHERE CodigoProducto='OR-179') AND B.CodigoProducto='OR-179')