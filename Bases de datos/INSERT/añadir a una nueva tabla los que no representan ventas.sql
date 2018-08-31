USE Jardineria;
SELECT * INTO YOQUESE
FROM  Empleados 
WHERE CodigoEmpleado NOT IN (SELECT CodigoEmpleadoRepVentas FROM Clientes) AND Puesto='Representante Ventas'