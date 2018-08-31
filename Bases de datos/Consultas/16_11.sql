USE nba;
--Ejercicio 1
SELECT *
FROM jugadores
WHERE Nombre_equipo like 'Timberwolves' and Peso< (SELECT AVG(PESO)
FROM jugadores
WHERE Nombre_equipo like 'Timberwolves');

--Ejercicio 2
SELECT *
FROM jugadores
WHERE Peso> ALL (SELECT AVG(PESO)
FROM jugadores
GROUP BY Nombre_equipo);

--Ejercicio 3
SELECT division FROM equipos 
WHERE nombre IN (SELECT Nombre_equipo 
FROM jugadores WHERE procedencia NOT LIKE 'Spain')
GROUP BY DIVISION;

--Ejercicio 4
SELECT NOMBRE_EQUIPO, COUNT (NOMBRE)
FROM jugadores
GROUP BY Nombre_equipo
HAVING COUNT (NOMBRE) >=15;

--Ejercicio 5
SELECT NOMBRE, PESO
FROM jugadores
  WHERE peso > ALL
(SELECT peso FROM jugadores 
WHERE procedencia = 'Spain');

--Ejercicio 6
SELECT NOMBRE, Peso
FROM jugadores
WHERE Posicion LIKE 'G';

--Ejercicio 7
SELECT Procedencia
FROM jugadores
WHERE Altura= (SELECT MAX(Altura) 
FROM jugadores);

--Ejercicio 5 con exists
select division 
from equipos
WHERE EXISTS (SELECT Nombre_equipo FROM jugadores
WHERE Procedencia ='Spain' and equipos.Nombre=jugadores.Nombre_equipo)
ORDER BY Division;