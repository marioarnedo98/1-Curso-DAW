---Usuarios
--Creamos el login del usuario MariaCREATE LOGIN Maria --DROP/ALTER
WITH PASSWORD ='Colegio01'
/*Creamos el usuario Maria al ponerle el use le dara permisos para ver la bd compras y nos lo metera ahi
Si no lo ponemos metera al usuario en la bd master*/
use compras
GO
CREATE USER Maria FOR LOGIN Maria;

---GRANT--- Dar permisos
GRANT CREATE TABLE--Si quieres crear tablas el usu tiene que estar master
TO Maria;

GRANT SELECT,INSERT, DELETE ON Articulos --le das peromiso de insert y update en la tabla Articulos
To Maria

GRANT UPDATE(stockmin) ON Articulos --le das permisos para hacer update solo sobre la columna stockmin de la tabla Articulos
To Maria

--REVOKE-- revocar permisos
REVOKE CREATE VIEW --Impider que pueda crear vistas
TO Maria

REVOKE SELECT(preunart) ON Articulos --Impide que Maria haga SELECT de una columna la tabla articulos
TO Maria

--DENY--Deniega permisos
DENY DELETE ON Articulos --Deniego que pueda hacer deletes en fecbaja
TO Maria

DENY SELECT(preunart) ON Articulos--Deniegas el que pueda hacer SELECT de preunart
To Maria

/*Diferencia entre REVOKE y DENY:
El DENY sirve para meter permisos "negativos", es decir, prohibir acceder a algún objeto. El REVOKE borra
*todos* los permisos, sean positivos o negativos, es decir, anula tanto los GRANT como los DENY. Una vez
hecho un revoke, no hay ninguna información sobre permisos al nivel al que se ha ejecutado la instrucción,
luego pasan a heredarse del nivel superior. Por ejemplo, si un usuario tiene un GRANT que le permite la
lectura sobre un esquema y un DENY que le prohibe acceder a una tabla del esquema, entonces no puede
acceder a la tabla. Si se hace un REVOKE sobre la tabla, entonces ya no hay información sobre si puede o no
puede acceder a la tabla, por lo que se sube al nivel anterior (el esquema), donde hay un permiso que dice que
sí que puede. Por lo tanto, después del REVOKE, el usuario sí que tendría permiso de acceder a la tabla.*/--Mostrar todos los usuarios de una base de datos--Select * from sys.database_principals/*Para otorgar o revocar permisos:
  A nivel de sistema, el usuario debe tener el privilegio “ADMIN OPTION”
  A nivel de objeto,se debe ser el propietario del objeto, o que el propietario del mismo le haya otorgado privilegios sobre él con la cláusula “WITH GRANT OPTION”
  Sobre cualquier objeto que se otorgue un permiso,se puede utilizar la opción WITH HIERARCHY para extender esos permisos a sus objetos (tabla a columnas, p.ej.).
  GRANT OPTION FOR : quita al usuario la capacidad de dar o quitar permisos que le fueron concedidos por la cláusulaWITH GRANT OPTION. Lo mismo
ocurre con HIERARCHY OPTION FOR
  Los privilegios más habituales son en:
  Tablas/Vistas: Select , Insert , Update, Delete, References, Alter, Index
  Columna: References, Insert, Update
  Funciones: Select
  Procedimientos: Execute*/