USE Jardineria
SELECT AVG(cantidad)
FROM Pagos
WHERE YEAR(FechaPago)='2009'
