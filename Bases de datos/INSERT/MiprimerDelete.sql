USE Jardineria;
DELETE Empleados 
WHERE CodigoEmpleado NOT IN (SELECT CodigoEmpleadoRepVentas FROM Clientes) AND Puesto='Representante Ventas'