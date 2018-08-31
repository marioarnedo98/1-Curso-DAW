create database al03;
go
create schema alumno
go
create schema nota
create table alumno.alumnos(
carnet int primary key,
nombres varchar (50),
apellidos varchar (50))
go
create table nota.notas(
idnotas int identity,
carnet int foreign key references alumno.alumnos(carnet),
nota1 decimal (10,2),
nota2 decimal (10,2),
nota3 decimal (10,2),
promedio as (nota1+nota2+nota3)/3)
go
INSERT INTO alumno.alumnos values (111,'Juan Jose','Perez')
INSERT INTO alumno.alumnos values (222,'Luisa','Flores')
INSERT INTO alumno.alumnos values (333,'Francisco','Gavidia')
INSERT INTO alumno.alumnos values (444,'Evelyn','Rivas')
INSERT INTO nota.notas VALUES (111,7.6,10,5.5)
INSERT INTO nota.notas VALUES (222,8.5,9,10)
INSERT INTO nota.notas VALUES (333,9.3,8.5,5.7)