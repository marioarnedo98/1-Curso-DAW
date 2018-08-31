use nba
SELECT Division
FROM equipos
WHERE Nombre  IN (SELECT Nombre_equipo
FROM jugadores 
WHERE Procedencia LIKE 'Spain')