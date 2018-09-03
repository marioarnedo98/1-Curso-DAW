					/*-------TIPOS DE DATOS---------------------*/ 
--Bigint  - int - smallint - tinyint - bit(0/1)- numeric - decimal - money - smallmoney
--Float - real - datetime- 
--Char - varchar - text - binary 

					/*FUNCIONES NULL : IMPORTANTE NO MODIFICAN BASE DE DATOS , SOLO RESULTADO*/

--ISNULL(campo que quieres cambiar, valor para remplazar los nulos).
USE Jardineria;
SELECT Gama,DescripcionTexto,ISNULL(DescripcionHTML,'KK') AS 'Description Html' FROM GamasProductos

--NULLIF(valor1, valor2).Nos devuelve null si los dos valores son iguales, y si son distintos nos devuelve el primero. 
SELECT NULLIF(4,4) AS 'IGUALES',NULLIF(4,7) AS 'Distintos'

--COALASCE(Campo1,campo2).Te devuelve el primer valor que no sea nulo. 
SELECT CodigoPedido,COALESCE(FechaEntrega,FechaEsperada) AS 'Fecha'
FROM Pedidos

										/*IDENTITY */
--Hemos creado la tabla con una columna identity
CREATE TABLE Mierda (
codigo int identity ,
nombres varchar(40)
)
--Insertamos los valores
INSERT INTO Mierda VALUES ('Maria'),('Marcos');

--Borramos el registro con el codigo uno , por lo que el codigo 1 se queda inutilizado.
DELETE FROM Mierda 
WHERE codigo=1

--Primero activamos con esa funcion para poder modificar la columna identity y luego le insertamos un nuevo registro
--IMPORTANTE : Especificar los campos.
SET IDENTITY_INSERT Mierda ON 
INSERT INTO Mierda(codigo,nombres) VALUES (1,'Maria');

											/*CREATE DATABASE*/

-- ON (Name=N'(nombre de la base de datos),Filename=N'(Ruta donde se guarda el mdf), size= tamaño en MB , MAXSIZE= maximo tamaño, filegrowth= porcentaje de crecimiento )
-- LOG ON (Name=N'(nombre de la base de datos)+_log ,Filename=N'(Ruta donde se guarda el ldf), size= tamaño en MB , MAXSIZE= maximo tamaño, filegrowth= porcentaje de crecimiento ) 
--COLLATE : Sensibilidad del sql. CS:SI DISTINGUE MAYUSCULAS Y MINUSCULAS ----------- AS: SI DISTINGUE ACENTOS
--								  CI: NO DISTINGUE MAYUSCULAS Y MINUSCULAS ---------- AI: NO DISTINGUE ACENTOS
CREATE DATABASE Maria 
ON (NAME=N'MARIA',
	FILENAME='C:\Archivos de programa\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Maria.mdf' ,
	 SIZE=2,MAXSIZE=3000,FILEGROWTH =10%)
LOG ON (NAME=N'MARIA_log',
		FILENAME=N'C:\Archivos de programa\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Maria.LDF', 
		SIZE=1,FILEGROWTH=10%)

COLLATE Modern_Spanish_CI_AS

												/*CREATE TABLE*/ 

--Procedimiento utilizado para ver las tablas creadas 'sp_tables @table_owner='dbo';'
--Procedimiento utilizado para ver la estructura de una tabla 'sp_columns Clientes;'
--Procedimiento utilizado para ver las restricciones de una tabla 'sp_helpconstraint Clientes;'

--Restriciones a nivel de columna 
/*	1.DEFAULT	2.CHECK		3.NOT NULL		4.UNIQUE		5.PRIMARY KEY
	6.FOREING KEY 
			P_Id int foreign key references persons(p_id)*/ 

--Para conseguir una columna calculada a traves de otras dos ....
--suma as(Codigoautor+codigoeditorial),
 
--Restricciones a nivel de tabla 
/*	1.UNIQUE	2.PRIMARY KEY	3.FOREIGN KEY (REFERENCES ....)		4.CHECK*/ 


--NOT NULL + DEFAULT :SQL Server no permite agregar campos "not null" a menos que se especifique un valor
--por defecto

create TABLE librosmaria(
		codigo int identity,
		titulo varchar(40),
		codigoautor int not null,
		codigoeditorial tinyint not null,
		precio decimal (5,2) constraint DF_Precio default (0), 
		suma as(Codigoautor+codigoeditorial),
		constraint PK_libros_codigo PRIMARY KEY (CODIGO, codigoautor)
		)

	INSERT INTO librosMaria VALUES ('titulo',8,5,10.2);
	select * from librosmaria

--Comprabar si algo existe para si existe borrarlo y crearlo de nuevo. 
IF OBJECT_ID('librosMaria') IS NOT NULL
    DROP TABLE librosMaria;

	/*ELIMAR CAMPOS DE UNA TABLA*/
--No pueden eliminarse los campos que son usados por un índice o que tengan restricciones. 
--No puede eliminarse un campo si es el único en la tabla. 

--Podemos eliminar varios campos en una sola sentencia:  
 ALTER TABLE NOMBRETABLA
 DROP COLUMN NOMBRECAMPO,NOMBRECAMPO1,...; 

	/*NO SE PUEDE MODIFICAR LOS CAMPOS DE UNA TABLA CUANDO : */	
--  - Campos de tipo text, image, ntext y timestamp.
--  - Un campo que es usado en un campo calculado. 
--  - Campos que son parte de índices o tienen restricciones, a menos que el cambio no afecte al índice o a la restricción,
--   por ejemplo, se puede ampliar la longitud de un campo de tipo carácter.
--  - Campos que afecten a los datos existentes cuando una tabla contiene registros 
--  (ejemplo: un campo contiene valores nulos y se pretende redefinirlo como "not null";
--   un campo int guarda un valor 300 y se pretende modificarlo a tinyint, etc.). */

   alter table NOMBRETABLA  
   alter column CAMPO NUEVADEFINICION; 

   /*AGREGAR RESTRICCIONES*/ 
--Para borrar una tabla que tenga una restriccion de foreign key primero hay que eliminar la restriccion. 
ALTER TABLE NOMBRETABLA 
ADD CONSTRAINT NOMBRECONSTRAINT  DEFAULT VALORPORDEFECTO  FOR CAMPO; 
 
ALTER TABLE libros 
WITH NOCHECK  --WITH CHEK : En caso de que quieras que se comprueben los anteriores. Por defecto , es esta opcion.
ADD CONSTRAINT FK_libros_codigoeditorial 
FOREIGN KEY (codigoeditorial)  REFERENCES editoriales(codigo); 

/*CREATE, DROP, INSERT, UPDATE, ALTER DE UNA VISTA*/ 
USE Jardineria;

--Alter y create
ALTER VIEW EmpleaDOOS
AS 
SELECT * FROM Empleados 
WHERE Nombre LIKE 'M%'; 

SELECT * FROM Empleados

--Insert
INSERT INTO EmpleaDOOS (CodigoEmpleado,Nombre,Apellido1,Apellido2,Extension,email,codigoOficina,Puesto) 
VALUES (0,'ALE','YTGUHJ','FTVBJH',7884,'mjeuybf@bui','TAL-ES','Secretaria')

--Update
UPDATE EmpleaDOOS 
SET Nombre='Marcos'
WHERE CodigoEmpleado=4;

--Drop 
DROP VIEW EmpleaDOOS ;

 
 