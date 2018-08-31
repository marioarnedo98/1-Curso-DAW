USE nba;
SELECT AVG(PESO), PROCEDENCIA 
FROM jugadores
--WHERE Procedencia IN ('Spain', 'Italy' , 'France')
GROUP BY Procedencia
HAVING Procedencia  IN ('Spain', 'Italy' , 'France')