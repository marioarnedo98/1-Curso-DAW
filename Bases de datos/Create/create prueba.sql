--Crear una base de datos llamada prueba.db de tamaño de 5 megas y de maximo de 3000 y un crecimiento del 10%. Para el fichero de transaccion tamaño de 1mb y crecimiento del 10% 
--La coalicion sea modernspanish que distinga mayusculas y minusculas y que no distinga caracteres acentuados, quiero que se cree en una carpeta en C, verificar si la base de datos existe
IF EXISTS(SELECT * FROM DBO.SYSDATABASES WHERE NAME = 'prueba') 
    BEGIN
             USE MASTER
             DROP DATABASE prueba
    END
CREATE DATABASE [prueba.db]
ON (NAME = N'prueba',
FILENAME = N'C:\prueba\prueba.mdf' ,
SIZE = 5, MAXSIZE = 3000,FILEGROWTH = 10%) 
LOG ON (NAME = N'prueba_log',
FILENAME = N'C:\prueba\prueba.LDF' , SIZE = 1, FILEGROWTH = 10%)
COLLATE Modern_Spanish_CS_AI;
