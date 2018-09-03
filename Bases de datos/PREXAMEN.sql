use Jardineria;
GO
alter function dbo.ejer5()
returns table
AS
return (SELECT Clientes.NombreContacto + ',' + Clientes.ApellidoContacto AS CONJUNTO FROM Clientes
WHERE Clientes.NombreContacto like 'A%');
GO
SELECT * FROM dbo.ejer5();
--ejer6
GO
create function dbo.ejer6(@letra varchar(1))
returns table
AS
return (SELECT Clientes.NombreContacto + ',' + Clientes.ApellidoContacto AS CONJUNTO FROM Clientes
WHERE Clientes.NombreContacto like @letra + '%');
GO
SELECT * FROM DBO.ejer6('T');

--EJER8
go
alter FUNCTION dbo.ejer8(@cod_cli int, @year int)
returns table
AS
return (SELECT Pedidos.CodigoCliente, DetallePedidos.CodigoPedido,DetallePedidos.NumeroLinea, DetallePedidos.Cantidad * DetallePedidos.PrecioUnidad as total
from Pedidos inner join DetallePedidos on Pedidos.CodigoPedido=DetallePedidos.CodigoPedido
where Pedidos.CodigoCliente like @cod_cli and DATEPART(YEAR,Pedidos.FechaPedido) like @year
group by DetallePedidos.CodigoPedido, Pedidos.CodigoCliente,DetallePedidos.NumeroLinea,DetallePedidos.Cantidad,DetallePedidos.PrecioUnidad);
go
SELECT * FROM dbo.ejer8(1,20) 

--CURSORES
--EJER1
DECLARE EJER3 CURSOR FOR(SELECT * FROM DetallePedidos);
OPEN EJER3
FETCH NEXT FROM EJER3
CLOSE EJER3;
DEALLOCATE EJER3
--ejer5
use nba;
declare @nombre varchar (255), @equipo varchar(255), @conf varchar (255)
declare ejer5 cursor for (select jugadores.Nombre, jugadores.Nombre_equipo, equipos.Conferencia from jugadores inner join equipos
on equipos.Nombre=jugadores.Nombre_equipo
group by jugadores.nombre, jugadores.Nombre_equipo, equipos.Conferencia);
open ejer5
fetch next from ejer5 into @nombre, @equipo, @conf
while @@FETCH_STATUS =0
begin
print @nombre + ',' + @equipo + ','+ @conf
fetch next from ejer5 into @nombre, @equipo, @conf
end
close ejer5
deallocate ejer5
--procedimientos
go
create proc prueba 
	as
		begin
			print 'aqui va la consulta'
		end
	print prueba
	DROP PROCEDURE prueba