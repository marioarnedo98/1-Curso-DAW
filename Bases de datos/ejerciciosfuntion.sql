--correccion 5
use Jardineria;
go
create function ejer5() returns table as
return select nombreCliente, nombreContacto +','+ ApellidoContacto as contacto from Clientes
go
--
select * from ejer5();
GO
--CORRECCION 1
USE [PRUEBA.DB]
GO
CREATE FUNCTION EJER1() (@lado1 int, @lado2 int)
returns float as
begin
declare @hipotenusa float, @rlado1 int, @rlado2 int
set @rlado1=(POWER(@lado1,2)
set @rlado2=(POWER(@lado2,2)
set @hipotenusa = SQRT(@rlado1*@rlado2)
return @hipotenusa;
--EJERCICIO 8

CREATE FUNCTION EJER8() RETURNS table AS
return select CodigoPedido, NumeroLinea, PrecioUnidad*Cantidad as Precio from DetallePedidos
GROUP BY CodigoPedido
go
--
SELECT * FROM EJER8()

