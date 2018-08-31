--que haraias si el director quiere ver las filas de la tabla de empleados correspondientes a los vendedores de su pais (España)
USE Jardineria;
GO
CREATE VIEW VISTA2 AS
SELECT Empleados.Nombre, Empleados.Apellido1, Empleados.Apellido2 FROM Empleados INNER JOIN Oficinas
ON Oficinas.CodigoOficina=Empleados.CodigoOficina
WHERE Oficinas.Pais LIKE'España';

select * from VISTA2;

--definir una vista con el empleado 11 que contenga los pedidos que el ha sido designado
CREATE VIEW VISTA3 AS
select Empleados.Nombre, Clientes.NombreCliente
from Empleados INNER JOIN Clientes
ON Empleados.CodigoEmpleado=Clientes.CodigoEmpleadoRepVentas
INNER JOIN Pedidos
ON Pedidos.CodigoCliente=Clientes.CodigoCliente
WHERE Empleados.CodigoEmpleado LIKE 11;
