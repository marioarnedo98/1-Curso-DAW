--Uso del Where, en este caso ponemos que saque los articulos cuyo stock sea mayor que 5
--tambien usamos el and, que hace que solo imprima si se cumplen las DOS 
--Si ponemos OR, solo hace falta de que se compra UNA
--Between = entre uno y otro
USE compras;
SELECT * FROM Articulos
WHERE stockart>5 OR stockart<100;

SELECT * FROM Articulos 
WHERE preunart BETWEEN 180 AND 300;