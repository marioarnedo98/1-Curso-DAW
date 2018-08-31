use compras;
SELECT DISTINCT Proveedores.codigpro, nombrpro, direcpro, localpro
FROM Proveedores INNER JOIN Pedidos
ON Proveedores.codigpro = Pedidos.codigpro
WHERE fechaped BETWEEN '20/01/2010' AND '15/09/2010'; 