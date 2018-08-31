use [PRUEBA.DB];
--Ejercicio 1 
ALTER VIEW DEP30 AS
select apellido as APE, oficio AS OFI, salario AS SAL
from empleados INNER JOIN departamentos
ON empleados.dept_no = departamentos.dept_no
WHERE departamentos.dept_no LIKE 30;

SELECT * FROM DEP30;

--EJERCICIO 2
INSERT INTO DEP30 VALUES ('PEREZ','EMPLEADO', 1300);
--DA ERROR DEBIDO A QUE LE TIENES QUE ASIGNAR UN NUMERO DE DEPARTAMENTO
SELECT * FROM DEP30;

--EJERCICIO 3
ALTER VIEW DEP30 AS
SELECT SALARIO+10 FROM empleados;
SELECT * FROM DEP30;

--EJERCICIO 4
DELETE FROM dep30
--BORRA TODO LA VISTA QUE TENIAMOS

--EJERCICIO 5
CREATE VIEW MAYOR1200 AS
SELECT apellido, salario, oficio, comision
FROM empleados INNER JOIN departamentos
ON empleados.dept_no=departamentos.dept_no
WHERE departamentos.dept_no LIKE 10 AND empleados.salario>1200;
SELECT * FROM MAYOR1200;

--EJERCICIO 6
CREATE VIEW EJ6 AS
SELECT emp_no, apellido, departamentos.dept_no, dnombre
FROM empleados INNER JOIN departamentos
ON empleados.dept_no=departamentos.dept_no;
SELECT * FROM EJ6;

--EJERCICIO 7
INSERT INTO EJ6 VALUES (2222,'SUELA',20,'INVESTIGACIÓN');

--EJERCICIO 8
CREATE VIEW PAGOS AS
SELECT LOWER(empleados.apellido) AS NOMBRE, empleados.salario AS SAL_MES, empleados.salario*12 AS SAL_AÑO, departamentos.dept_no 
FROM empleados INNER JOIN departamentos
ON empleados.dept_no=departamentos.dept_no
WHERE departamentos.dept_no LIKE 10;
SELECT * FROM PAGOS;

--EJERCICO 9
CREATE VIEW VMEDIA AS
SELECT departamentos.dept_no, departamentos.Dnombre, AVG(empleados.salario) AS MEDIA, MAX(EMPLEADOS.SALARIO) AS MAXIMO
FROM EMPLEADOS INNER JOIN DEPARTAMENTOS
ON departamentos.[dept_no] = empleados.[dept_no]
GROUP BY departamentos.dept_no,departamentos.Dnombre;
SELECT * FROM VMEDIA
--No se puede hacer nada por que hay un group by :D
--EJERCICIO 10
DROP VIEW VMEDIA
DROP VIEW PAGOS