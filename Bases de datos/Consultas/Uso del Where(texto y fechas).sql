--Uso del where pero con texto.
--El uso de IN es como poner Madrid OR Barcelona OR....
USE compras;
SELECT * FROM Proveedores
WHERE localpro='Oviedo';

USE compras;
SELECT * FROM Proveedores
WHERE localpro IN ('Madrid','Barcelona', 'Santander');