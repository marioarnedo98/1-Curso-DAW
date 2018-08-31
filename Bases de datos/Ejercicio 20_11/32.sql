USE Jardineria
SELECT Nombre,Apellido1,Puesto,CodigoEmpleado
FROM empleados
WHERE codigoEmpleado Not in
(Select codigoempleado from clientes);

