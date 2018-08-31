USE nba;
--Ejercicio 2
SELECT *
FROM equipos
WHERE Nombre BETWEEN 'h' and 's';

--Ejercicio 4
SELECT *
FROM equipos
WHERE Conferencia LIKE 'west';

--Ejercicio 5
SELECT *
FROM jugadores
WHERE Procedencia LIKE 'Arizona' and peso*0.4535 >100 and Altura>'6';

--Ejercicio 7
SELECT Nombre
FROM jugadores
WHERE Nombre LIKE '__v%';

--Ejercicio 9
SELECT COUNT(*)
FROM jugadores
WHERE Procedencia LIKE 'Argentina';

--Ejercicio 19
SELECT Nombre_equipo, COUNT(Nombre) AS contador  
FROM jugadores
WHERE Posicion LIKE 'C'
GROUP BY nombre_equipo;

--Ejercicio 20
SELECT TOP 1 MAX(Altura) as maximo
FROM jugadores
WHERE Posicion='C'

--Ejercicio 22
SELECT COUNT(Nombre)
FROM jugadores
WHERE Nombre LIKE 'Y%';

--Ejercicio 23
SELECT jugador, Puntos_por_partido
FROM estadisticas
WHERE Puntos_por_partido=0;

--Ejercicio 25
SELECT AVG(peso) as peso_medio,
AVG(Peso*0.4535) AS media_kg
FROM jugadores
WHERE Nombre_equipo LIKE 'Raptors';

--Ejercicio 26
SELECT CONCAT('Nombre; ', Nombre, '(',Nombre_equipo,')')
FROM jugadores;

--Ejercicio 27 
SELECT MIN(puntos_local) AS Local, MIN (puntos_visitante) AS VISITANTE
FROM partidos;

--Ejercicio 28 
SELECT TOP 10 Nombre 
FROM jugadores 
ORDER BY Nombre;