USE PRUEBA;
DECLARE @A INT =3;
DECLARE @B INT =4;
PRINT @A
PRINT @B
---
DECLARE @EJER2 INT=34;
IF (@EJER2%2=0)
PRINT 'ES DIVISIBLE'
ELSE
PRINT 'NO ES DIVISIBLE'
--
use hospital
GO
BACKUP DATABASE hospital
TO DISK = 'C:\backup\hospital.Bak' WITH FORMAT,
MEDIANAME = 'CBACKUPHOSPI',
NAME = 'Full Backup of HOSPITAL';
--
create database hospital
use hospital
RESTORE DATABASE hospital
from disk ='C:\backup\hospital.Bak'
with replace;
--
use Universidad
GO
DROP TRIGGER EXAMEN1
GO
CREATE TRIGGER EXAMEN1 ON ASIGNATURA FOR DELETE AS
BEGIN 
PRINT 'NO, NO PUEDES'
ROLLBACK TRANSACTION
END
--TEST
DELETE FROM ASIGNATURA where nombre like 'Qu�mica F�sica'; 