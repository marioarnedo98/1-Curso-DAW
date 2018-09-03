USE nba;

DECLARE @hola int;
SET @hola = 144;
print @hola

-- CONSULTAS
insert into jugadores (jugadores.Nombre, jugadores.Procedencia, jugadores.Altura, jugadores.Peso, jugadores.Posicion, jugadores.Nombre_equipo)
	values ('joputa', 'mongolia', '6-9', 180, 'delantero', null);

update jugadores
set Nombre= 'pedro'
where Procedencia= 'mongolia';

delete jugadores
 where Procedencia = 'mongolia' and Nombre = 'pedro';


 --crear base de datos, con 2 tablas
 create database alsa;
 use alsa;

 create table fk1autobus1(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY
 )

 create table autobus5 (
 nombre_chofer varchar(25),
 numero_linea varchar(25),
 max_pasajeros int,
 precio_ticket int,
 id_foureinautobus int,

 -- PRIMARY KEY(nombre_chofer, numero_linea)
 CONSTRAINT cons_primary_bus5 PRIMARY KEY(nombre_chofer, numero_linea),
 --clave ajena 
 CONSTRAINT fk_foureinautobus FOREIGN KEY(id_foureinautobus) REFERENCES fk1autobus1(id)
 )

 -- CREA LA TABLA autobusero
 create table autobusero2 (
 idautobusero int NOT NULL
 )

 -- Altera la tabla autobusero tenga una primary key que sea el campo idautobusero
  alter table autobusero
  add
  constraint pk_busero primary key(idautobusero);
  

  IF OBJECT_ID('autobusero3') IS NOT NULL
  DROP table autobusero3;

   create table autobusero3 (
 idautobusero int NOT NULL,
 edad int not null,
 constraint check_edad check (edad>=18)
 )
 --añadir una nueva columna a la tabla
 alter table autobusero3 
 add tipo233 int not null;


 ALTER TABLE autobusero3 DROP CONSTRAINT check_edad;

 INSERT INTO autobusero3(autobusero3.idautobusero, autobusero3.edad)
 VALUES (34, 18)

   select 
  case
	when autobusero3.edad =18 then 'niño'
	else 'otro tipo'
	end as 'niniosss'
  from autobusero3

 go
 create view vista1 as
 select * from autobusero3

 go
 select * from vista1
 

 SELECT autobusero3.idautobusero,
	CASE
		WHEN autobusero3.edad>=18 AND autobusero3.edad<=25 THEN 'Joven'
		WHEN autobusero3.edad>=26 AND autobusero3.edad<=65 THEN 'Adulto'
		ELSE 'Abuelete'
		END AS 'TIPO_CONDUCTOR', edad
		FROM autobusero3;

BEGIN TRY
	BEGIN TRANSACTION
		 INSERT INTO autobusero3(autobusero3.idautobusero, autobusero3.edad)
			VALUES (34, 19)

		INSERT INTO autobusero3(autobusero3.idautobusero, autobusero3.edad)
			VALUES (34, 12)
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	print 'a la puta todo'
END CATCH


create login pablo
with password = 'Colegio01'
use master
create user pablo for login pablo

GRANT SELECT ON autobus TO pablo; 

GRANT CREATE DATABASE TO pablo

GO
EXECUTE AS USER = 'pablo';
CREATE DATABASE bdoooo;
revert;




