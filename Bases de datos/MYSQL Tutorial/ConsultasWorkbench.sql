use nba;
-- ¿Cuánto pesa el jugador más pesado de la nba?
select nombre, peso
from jugadores
where peso=(select max(peso) from jugadores);

-- ¿Cuánto mide el jugador más bajito de la nba?
select NOMBRE, Altura
FROM jugadores
WHERE Altura=(SELECT MIN(Altura)FROM JUGADORES);

-- ¿Cuántos jugadores tienen los Lakers?
select COUNT(NOMBRE) AS CONTADOR, NOMBRE_EQUIPO
FROM JUGADORES
WHERE NOMBRE_EQUIPO LIKE 'LAKERS';

-- ¿Cuánto pesan de media los jugadores de los Blazers?
Select avg (peso) 
FROM jugadores
WHERE Nombre_equipo = ‘Blazers’;