USE banco;

-- 1. Variables
--				Las variables son espacios en la memoria que almacenan información.

DECLARE @Variable1 INT
SET @variable1 = 12;

DECLARE @Variable2 VARCHAR(15);
SET @Variable2 = 'Variable';

DECLARE @Variable3 INT
SELECT @Variable3 = codigo_cliente FROM cliente WHERE nombre='Luis';

DECLARE @Variable4 TABLE(
	id int,
	nombre varchar(20)
)
INSERT INTO @Variable4 SELECT codigo_cliente, nombre FROM cliente;
SELECT * FROM @Variable4;


-- 2. Procedimientos
--					 Pueden o no devolver 1 o más variables.
--					 Aceptan 1 o n parámetros.
GO
DROP PROCEDURE Procedimiento1;
CREATE PROCEDURE Procedimiento1 
	AS
		BEGIN
			print 'Procedimiento muy sencillo.'
		END
EXEC Procedimiento1

GO
DROP PROCEDURE Procedimiento2;
CREATE PROC Procedimiento2 (@nombre VARCHAR(20), @apellido1 VARCHAR(20))
	AS
		BEGIN
			SELECT * FROM cliente WHERE nombre=@nombre AND apellido1 = @apellido1;
		END
EXEC Procedimiento2 'Luis', 'Luzuriaga'


GO
DROP PROCEDURE Procedimiento3;
CREATE PROCEDURE Procedimiento3 (@ID INT OUTPUT, @nombre VARCHAR(20), @apellido VARCHAR(20))
	AS
		BEGIN
			SELECT @ID = codigo_cliente FROM cliente WHERE nombre = @nombre AND apellido1 = @apellido
		END

DECLARE @IDP3 int;
EXEC Procedimiento3 @IDP3 OUTPUT, 'Luis', 'Luzuriaga'
print 'El ID es: ' + cast(@IDP3 as varchar);


CREATE PROCEDURE Procedimiento4 @nombre VARCHAR(20), @apellido VARCHAR(20)
	AS
		BEGIN
			RETURN (SELECT codigo_cliente FROM cliente WHERE nombre=@nombre AND apellido1=@apellido)
		END

DECLARE @IDP4 int;
EXEC @IDP4 = Procedimiento4 'Luis','Luzuriaga';
print 'El ID es: ' + cast(@IDP4 as varchar);


-- 3. Funciones
--				Las funciones siempre devuelven un valor como máximo y mínimo, pero no puede devolver cursores ni Timestamp.
--				Las funciones puede aceptar N parámetros de entrada.
GO
CREATE FUNCTION DBO.Funcion1() RETURNS INT AS
		BEGIN
			RETURN 1;
		END
PRINT dbo.Funcion1();

GO
CREATE FUNCTION DBO.Funcion2(@ID INT, @nombre varchar(20)) 
	RETURNS TABLE
		AS
				RETURN (SELECT * FROM cliente WHERE codigo_cliente=@ID OR nombre=@nombre);
SELECT * FROM dbo.Funcion2(1999, 'Luis');



-- 4. Cursores
--				Recorrer 1 a 1 las filas de una sentencia T-SQL
--				Si se quieren actualizar o borrar datos del cursor, ver la documentación *

GO
DECLARE @nombre varchar(20);
DECLARE @codigo int;

DECLARE CursorEjemplo CURSOR FOR (SELECT nombre, codigo_cliente FROM cliente);
OPEN CursorEjemplo;

FETCH NEXT FROM CursorEjemplo INTO @nombre, @codigo;

WHILE @@FETCH_STATUS = 0
	BEGIN

	--UPDATE dbo.Articulos SET descrart = '!'+ descrart
	-- WHERE CURRENT OF MI_CURSOR
	print 'Codigo: ' + cast(@codigo as varchar) + '| Nombre: ' + @nombre;

	FETCH NEXT FROM CursorEjemplo INTO @nombre, @codigo
	END

CLOSE CursorEjemplo;
DEALLOCATE CursorEjemplo;

USE compras;
GO
--Variable
DECLARE @contador int
--CURSORES
DECLARE MI_CURSOR CURSOR STATIC FOR
SELECT * FROM dbo.Articulos 
--ABRIR
OPEN MI_CURSOR
--IMPRIMIR EL PRIMER REGISTRO 
FETCH FIRST FROM MI_CURSOR
FETCH LAST FROM MI_CURSOR
FETCH ABSOLUTE 3 FROM MI_CURSOR
--CERRAR
CLOSE MI_CURSOR
--LIBERAR
DEALLOCATE MI_CURSO
-- 5. Triggers
