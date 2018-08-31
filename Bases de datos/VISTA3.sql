USE Jardineria;
GO
CREATE VIEW VISTA3 AS
select Empleados.Nombre, Clientes.NombreCliente
from Empleados INNER JOIN Clientes
ON Empleados.CodigoEmpleado=Clientes.CodigoEmpleadoRepVentas
INNER JOIN Pedidos
ON Pedidos.CodigoCliente=Clientes.CodigoCliente
WHERE Empleados.CodigoEmpleado LIKE 11;
SELECT * FROM VISTA3