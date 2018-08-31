use compras;
--Ejercicio 1
use compras;
SELECT DISTINCT codigpro, nombrpro 
FROM Proveedores
WHERE codigpro IN (SELECT codigpro 
FROM PEDIDOS WHERE codigpro = Pedidos.codigpro
AND fechaped BETWEEN '24/09/2010' AND '21/11/2010');

--Ej 2
SELECT DISTINCT codigpro, nombrpro 
FROM Proveedores
WHERE codigpro IN (SELECT codigpro 
FROM PEDIDOS WHERE codigpro = Pedidos.codigpro
AND fechaped BETWEEN '24/09/2010' AND '21/11/2010')
AND localpro ='Madrid';