USE Jardineria;
--BOTON DERECHO ENCIMA DE UNA TABLA SCRIPT DE TODO

/* ------------------------------------INSERT------------------------------------------------------------------- 
-Insertar registros con todos los campos ordenados.Tabla + VALUES ()
-Si no quieres insertar todos los campos o que esten desordenados,especificarlos, detras del nombre de la tabla
-Insert con Select, se añaden TODOS los campos.Por lo tanto tiene que ser similares las tablas.
-INSERT INTO tabla DEFAULT VALUES('VALOR POR DEFECTO')
-INSERT EXTENDIDO : un solo insert y diferentes valores , separados por parentesis y comas*/

INSERT INTO Empleados VALUES (0,'Maria' , 'Hernani' , 'Hernaez', 'KK','YGFUEHDUE@VGBN','TAL-ES',7,'3453534');

--Si queremos hacer una tabla exactamente igual e introducir los datos tenemos que realizar esta consulta.
--Se pueden añadir los campos que tu quieras y filtrar con WHERE o GROUP BY. 
--IMPORTANTE: QUE LA TABLA NO ESTE CREADA
SELECT CodigoEmpleado,Nombre, Apellido1, Apellido2 INTO Empleados5 FROM Empleados WHERE Nombre LIKE 'M%';
SELECT * FROM Empleados5; 

/*-------------------------------UPDATE---------------------------------------------------------------------------*/
--Normales 
UPDATE Empleados 
SET Nombre='Marcos' 
WHERE Nombre='Maria' AND CodigoEmpleado=0;

--Subconsultas ,esto lo hacemos cuando necesitamos cambiar un campo en una tabla que esta en otra tabla 
UPDATE Empleados SET CodigoOficina = (SELECT CodigoOficina  FROM Oficinas WHERE Ciudad='Madrid')
WHERE CodigoEmpleado=0;

--Filtarlo por una consulta, para cambiar varios registros con otra tabla
UPDATE Empleados SET CodigoOficina = 'TAL-ES' 
WHERE codigoOficina = (SELECT CodigoOficina  FROM Oficinas WHERE Ciudad='Madrid');

--Combinacion de las dos anteriores.
--Filtramos y a cambiamos los campos a traves de otras tablas.
UPDATE Empleados SET CodigoOficina = (SELECT CodigoOficina  FROM Oficinas WHERE Ciudad='Barcelona')
WHERE codigoOficina = (SELECT CodigoOficina  FROM Oficinas WHERE Ciudad='Talavera de la reina');

/*---------------------------DELETE----------------------------------------------------------------------------------*/
--Normal
DELETE FROM Empleados
WHERE CodigoEmpleado=0

-- Filtrarlo con una consulta para borrar varios registos 
DELETE FROM Empleados3
WHERE CodigoOficina = (SELECT CodigoOficina FROM Oficinas WHERE Ciudad='Barcelona');

/*----------------------------------------FUNCION CASE -------------------------------*/
--Para especificar diferentes causisticas
UPDATE Empleados 
SET CodigoOficina= 
	CASE 
		WHEN CodigoOficina= 'BCN-ES' THEN 'PAR-FR'
		WHEN CodigoOficina='LON-UK' THEN 'TOK-JP'
	ELSE 'BCN-ES'
	END 
	WHERE Puesto='Representante Ventas';

	
