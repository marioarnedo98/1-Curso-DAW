USE Jardineria
INSERT INTO españa
SELECT *
FROM Oficinas
WHERE Oficinas.Pais LIKE 'Inglaterra';