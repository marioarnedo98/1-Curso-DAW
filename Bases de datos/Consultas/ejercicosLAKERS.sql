USE nba;
--Sacar los jugadodres de la NBA que juegan a los lakers
SELECT COUNT (Nombre)
FROM jugadores
WHERE Nombre_equipo='Lakers';

--El mas pesado
SELECT TOP 1 peso
FROM jugadores
ORDER BY Peso DESC;

--Media de peso de los que juegan en los Lakers
SELECT AVG(peso)
FROM jugadores
WHERE Nombre_equipo='Lakers';

--Media de peso de cada equipo
SELECT AVG(peso),Nombre_equipo
FROM jugadores
GROUP BY Nombre_equipo;

--Top 3 con mas peso
SELECT TOP 3 AVG(peso),Nombre_equipo
FROM jugadores
GROUP BY Nombre_equipo
ORDER BY AVG(peso) DESC;

--Que salgan los equipos de peso medio sea de 100 
SELECT AVG(peso),Nombre_equipo
FROM jugadores
GROUP BY Nombre_equipo
HAVING AVG(Peso)>220
ORDER BY AVG(peso) DESC;
