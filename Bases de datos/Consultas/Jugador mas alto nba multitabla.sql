USE nba;
SELECT equipos.Ciudad, jugadores.Nombre
FROM jugadores INNER JOIN equipos
ON jugadores.Nombre_equipo=equipos.Nombre
WHERE JUGADORES.ALTURA= (SELECT MAX(JUGADORES.ALTURA) FROM jugadores);
