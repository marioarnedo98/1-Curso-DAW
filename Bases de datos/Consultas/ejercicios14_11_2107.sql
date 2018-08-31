use alumnos;
--1
Use alumnos
SELECT *
FROM ALUM2014;

--2
Use alumnos
SELECT dni, nombre, apellidos, curso, nivel, clase
FROM ALUM2014;

--3
Use alumnos
SELECT nombre, apellidos
FROM ALUM2014
WHERE poblacion LIKE 'Guadalajara';

--4
Use alumnos
SELECT dni, nombre, apellidos, curso, nivel, clase,DATEDIFF(YEAR,fecha_nac,'2017-11-14')
FROM ALUM2014
ORDER BY nombre,apellidos ASC 

--5
Use alumnos
SELECT dni
FROM ALUM2014
WHERE fecha_nac IS NULL

--6
Use alumnos
SELECT *
FROM ALUM2014
WHERE fecha_nac IS NOT NULL

--7
Use alumnos
SELECT dni,nombre,apellidos
FROM ALUM2014
WHERE apellidos LIKE '%Pérez'


--8
Use alumnos
SELECT dni,nombre,apellidos,curso,nivel,clase
FROM ALUM2014
WHERE poblacion LIKE 'MARCHAMALO' OR poblacion LIKE 'CABANILLAS' OR poblacion LIKE 'YUNQUERA'


--9
Use alumnos
SELECT dni,nombre,apellidos,curso,nivel,clase,DATEDIFF(YEAR,fecha_nac,'2017-11-14')
FROM ALUM2014
WHERE DATEDIFF(year,fecha_nac,'2017-11-14') BETWEEN 28 AND 30

--10
Use alumnos
SELECT dni,nombre,apellidos,curso,nivel,AVG(faltas1+faltas2+faltas3) AS Faltas
FROM ALUM2014
WHERE nivel IN('ESO','ESI')
GROUP BY dni,nombre,apellidos,curso,nivel,clase

--11
Use alumnos
SELECT dni,nombre,apellidos,curso,nivel,clase
FROM ALUM2014
GROUP BY dni,nombre,apellidos,curso,nivel,clase
HAVING SUM(faltas1+faltas2+faltas3) IS NULL 

--12
Use alumnos
SELECT dni,nombre,apellidos,nivel
FROM ALUM2014
WHERE YEAR (fecha_nac)=1998 AND DATENAME (M,fecha_nac)='Marzo';

--13
Use alumnos
SELECT dni,CONCAT(nombre,apellidos)
FROM ALUM2014
ORDER BY dni DESC

--14
Use alumnos
SELECT nombre, apellidos
FROM ALUM2014
WHERE curso LIKE '4' AND nivel LIKE 'ESO' AND  clase LIKE 'b'
ORDER BY apellidos, nombre ASC

--15
Use alumnos
SELECT nombre, apellidos,SUM(faltas1+faltas2+faltas3)
FROM ALUM2014
WHERE curso LIKE '4' AND nivel LIKE 'ESO' AND  clase LIKE 'b'
GROUP BY apellidos, nombre

--16
Use alumnos
SELECT dni,nombre, apellidos,curso,nivel, clase
FROM ALUM2014
WHERE nivel NOT LIKE 'ESO' AND nivel NOT LIKE 'BAC'
ORDER BY curso, nivel, clase ASC ,apellidos DESC

--17
Use alumnos
SELECT dni,nombre, apellidos,curso,nivel, clase,DATEDIFF(YEAR,fecha_nac,'2017-11-14') AS EDAD
FROM ALUM2014
WHERE nivel NOT LIKE 'ESO' AND nivel NOT LIKE 'BAC' AND DATEDIFF(YEAR,fecha_nac,'2017-11-14') BETWEEN 28 AND 30
ORDER BY curso, nivel, clase ASC ,apellidos DESC