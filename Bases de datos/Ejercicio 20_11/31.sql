USE jardineria
SELECT NombreCliente
FROM Clientes
WHERE LimiteCredito = (SELECT MAX(LimiteCredito) FROM Clientes)
