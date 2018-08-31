use nba
GO
--crear una vista con el nombre, el codigo, y los puntos por partido de cada jugador
create view pp as
SELECT Nombre, codigo, Puntos_por_partido
FROM jugadores INNER JOIN estadisticas
ON estadisticas.jugador=jugadores.codigo

update pp set Nombre=LOWER(Nombre)

SELECT * FROM pp;