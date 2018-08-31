use compras
SELECT articulos.codigart, descrart, stockart FROM Articulos
WHERE stockart > ALL (SELECT unilin FROM Lineas
WHERE Articulos.codigart = Lineas.codigart)