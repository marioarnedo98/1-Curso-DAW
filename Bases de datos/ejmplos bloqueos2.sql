select * from dbo.pruebatransacciones

update dbo.pruebatransacciones
set descripcion='Otro cambio';

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

ALTER DATABASE pruebaBD
 SET ALLOW_SNAPSHOT_ISOLATION ON 

SET TRANSACTION ISOLATION LEVEL SNAPSHOT
