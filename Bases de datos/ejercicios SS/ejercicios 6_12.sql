--ejercicio 6
DECLARE @uno int;
DECLARE @dos int; 
DECLARE @tres int;
set @uno= 3;
set @dos=4;
set @tres= 1;
if @tres = 1 
print @uno + @dos
else 
if @tres=2
print @uno - @dos
else 
if @tres=3
print @uno*@dos
else
print 'Entrada no valida'

--ahora con case
DECLARE @var1 INT;
DECLARE @var2 INT;
DECLARE @var3 int;
DECLARE @resultado int;
set @var1=3;
set @var2=4;
set @var3=2;
set @resultado= case @var3
when 1 then @var1+@var2
when 2 then  @var1 - @var2
when 3 then  @var1 * @var2
else 'entrada no valida'
end
print @resultado;

--ejercicio 12 
use master
update Articulos
set stockart=case
when stockart=0 then 'producto' + codigart + stockart+1000
end