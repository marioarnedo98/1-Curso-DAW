use Jardineria;
SELECT CodigoEmpleado, Nombre, OFICINAS.CodigoOficina, OFICINAS.Ciudad 
FROM Empleados RIGHT JOIN Oficinas
ON Empleados.CodigoOficina=OFICINAS.CodigoOficina
WHERE Oficinas.Ciudad IS NULL ;