USE Jardineria
SELECT COUNT(CodigoPedido),Estado
FROM Pedidos
GROUP BY Estado 
ORDER BY COUNT(CodigoPedido) DESC