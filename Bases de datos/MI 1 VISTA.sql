USE nba
GO
create view VISTA AS 
select Nombre as nombre, Nombre_equipo AS NOMBRE_EQUIPO
from jugadores;
SELECT * FROM VISTA;