use Supermercado;

--EJERCICIO 1
 SELECT documento,nombre,domicilio,seccion,sueldo,ciudad
  FROM empleados INNER JOIN sucursales 
  ON codigosucursal=codigo;

--EJERCICIO 2
SELECT DISTINCT seccion 
INTO Seccion
FROM empleados;

--Ejercicio 3
Select * 
FROM Seccion;

--EJERCICIO 4
SELECT seccion,SUM(sueldo) AS TOTAL 
INTO sueldosxseccion 
FROM empleados
GROUP BY seccion;

--¿FUNCIONA?

SELECT * FROM sueldosxseccion

--EJERCICIO 5
SELECT TOP 3 *
INTO MAXSUELDOS
FROM empleados
ORDER BY sueldo desc;

--¿?¿?
SELECT * FROM MAXSUELDOS;

--EJERCICIO 6
SELECT documento,nombre,domicilio,seccion,sueldo,ciudad
INTO SUCURSALCORDOBA
FROM empleados INNER JOIN sucursales 
ON codigosucursal=codigo
WHERE ciudad='Cordoba';

--¿?¿?
SELECT * FROM SUCURSALCORDOBA;
