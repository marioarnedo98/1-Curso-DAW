--Crear una tabla  llamada condiciones con dni nombre edad y curso El DNI no puede ser nulo y es clave primaria, la edad entre 5 y 20 años el nombre en mayus, dentro del curso solo se 
--puede meter 1,2,3 y no nulos, poner nombre a las restrinciones
 CREATE DATABASE [PRUEBA.DB];
 USE [PRUEBA.DB]
CREATE TABLE CONDICIONES(
DNI char(10) CONSTRAINT DNI PRIMARY KEY,
nombre varchar(30), 
edad tinyint, 
curso char NOT NULL,
fechanac date NOT NULL,
--EDAD AS DATEDIFF(YY, fechanac,getdate()),
CONSTRAINT CK_EDAD CHECK (edad between 5 and 20),
CONSTRAINT CK_nombre CHECK (nombre=UPPER(nombre)),
CONSTRAINT CK_curso CHECK (curso IN(1,2,3))
)