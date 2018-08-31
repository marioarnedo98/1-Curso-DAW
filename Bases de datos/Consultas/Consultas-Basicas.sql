USE compras;
--Seleccionas todo de la tabla Articulos
SELECT * FROM Articulos;
--Seleccionas la descripcion y el numero de stock de Articulos
SELECT descrart,stockart FROM Articulos;
--Simple suma 
SELECT 1+16 AS suma;
--Concat: Une, en este caso las dos tablas para crearlas en una sin nombre, pero con el AS (Alias) le pones un nombre y eres feliz
SELECT concat(descrart, stockart +3)AS Juntas FROM Articulos;
--Añadimos oficina Madrid como en una tabla nueva y lo ordenamos alfabeticamente la descripcion
SELECT descrart AS DESCRIPCION, stockart, 'Oficina Madrid' AS Oficina FROM Articulos ORDER BY descrart DESC;
SELECT nombrpro, telefpro FROM Proveedores;