use nba;
go 
create view jugadoreslakers as 
select Nombre, Nombre_equipo
from jugadores
where Nombre_equipo like 'Lakers' WITH CHECK OPTION;

SELECT * FROM jugadoreslakers;

CREATE VIEW ALLJUGADORES AS
SELECT UPPER (NOMBRE)
FROM jugadoreslakers;

UPDATE jugadoreslakers SET Nombre=UPPER(Nombre);