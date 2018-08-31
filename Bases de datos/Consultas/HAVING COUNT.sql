USE nba;
SELECT COUNT(*), Nombre_equipo
FROM jugadores
WHERE Nombre LIKE '%p%'
GROUP BY Nombre_equipo
HAVING COUNT (nombre)>1;