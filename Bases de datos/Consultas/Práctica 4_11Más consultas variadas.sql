USE nba;
--EJERCICIO 1 
SELECT jugadores.Nombre_equipo, jugadores.Nombre
FROM jugadores 
WHERE Procedencia LIKE 'Spain';

--Ejercicio 2
SELECT equipos.Nombre 
FROM equipos
WHERE equipos.Nombre LIKE 'H%s';

--EJERCICIO 3
SELECT jugadores.Nombre, estadisticas.Puntos_por_partido 
FROM jugadores INNER JOIN estadisticas
ON jugadores.codigo=estadisticas.jugador
WHERE jugadores.Nombre LIKE 'Pau Gasol';

--EJERCICIO 4 
SELECT equipos.Nombre 
FROM equipos
WHERE equipos.Conferencia LIKE 'West';

--EJERCICIO 5
SELECT jugadores.Nombre, equipos.Ciudad
FROM jugadores INNER JOIN equipos
ON equipos.Nombre=jugadores.Nombre_equipo
WHERE Nombre_equipo LIKE 'Arizona' AND jugadores.Peso > '100' AND 
jugadores.altura > 6;

--EJERCICIO 6 
SELECT jugadores.Nombre_equipo, jugadores.Nombre, estadisticas.Puntos_por_partido
FROM jugadores INNER JOIN estadisticas
ON jugadores.Nombre=estadisticas.jugador
WHERE jugadores.Nombre_equipo LIKE 'Cavaliers';

--EJERCICIO 7
SELECT jugadores.Nombre 
FROM jugadores
WHERE jugadores.Nombre LIKE '__v%';

--EJERCICIO 8
SELECT COUNT (JUGADORES.NOMBRE) AS CONTADOR, equipos.Nombre
FROM jugadores INNER JOIN equipos
ON jugadores.Nombre_equipo = equipos.Nombre
WHERE equipos.Conferencia LIKE 'west'
GROUP BY equipos.Nombre, equipos.Conferencia;

--EJERCICIO 9 
SELECT jugadores.Procedencia, COUNT(jugadores.Nombre) AS CONTADOR
FROM jugadores 
WHERE Procedencia LIKE 'Argentina'
GROUP BY jugadores.Procedencia;

--EJERCICIO 10
SELECT AVG(estadisticas.puntos_por_partido), jugadores.Nombre
FROM estadisticas INNER JOIN jugadores
ON jugadores.Nombre=estadisticas.jugador
WHERE jugadores.Nombre LIKE 'LeBron James'
GROUP BY jugadores.Nombre;

--EJERCICIO 11
SELECT estadisticas.Asistencias_por_partido
FROM estadisticas INNER JOIN jugadores
ON jugadores.Nombre_equipo=estadisticas.jugador
WHERE jugadores.Nombre LIKE 'Jose Calderon'
GROUP BY estadisticas.Asistencias_por_partido, estadisticas.temporada
HAVING estadisticas.temporada LIKE '07/08';