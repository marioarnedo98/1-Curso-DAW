USE Jardineria
SELECT COUNT(NombreCliente) clientes,Pais
FROM Clientes
GROUP BY PAIS