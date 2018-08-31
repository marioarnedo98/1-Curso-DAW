SELECT NOMBRE
FROM jugadores 
WHERE Nombre_equipo IN (SELECT Nombre
FROM equipos
WHERE Division LIKE 'southEast');