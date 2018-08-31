use nba;
go
--crear dos vistas, una con codigo, nombre, equipo y altura y la otra, el codigo, el equipo y el nombre e insertar un jugador 
CREATE VIEW V1 AS 
SELECT codigo,Nombre,Nombre_equipo,Altura
FROM jugadores
WHERE Nombre_equipo LIKE 'Lakers';

SELECT * FROM V1;
INSERT INTO V1 VALUES(4512,'Manolo','Lakers','10-0');



CREATE VIEW V2 AS 
SELECT codigo, Nombre,Nombre_equipo
FROM jugadores
WHERE Nombre_equipo LIKE 'Lakers';

SELECT * FROM V2;
INSERT INTO V2 VALUES (4513, 'Pepe', 'Lakers');