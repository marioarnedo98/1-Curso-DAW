USE nba;
CREATE VIEW LAKERS AS
SELECT JUGADORES.NOMBRE, JUGADORES.NOMBRE_EQUIPO
FROM JUGADORES
WHERE NOMBRE_EQUIPO LIKE 'LAKERS' WITH CHECK OPTION;