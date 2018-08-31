CREATE TABLE [dbo].[pruebatransacciones](
[id] [int] NOT NULL,
[descripcion] [nvarchar](250) NULL,
 CONSTRAINT [PK_pruebatransacciones] PRIMARY KEY (id)
)
 
GO

Insert dbo.pruebatransacciones(id,descripcion) values('1','valor original');

begin transaction
update dbo.pruebatransacciones
set descripcion = 'cambio'

commit transaction

begin transaction
select * from dbo.pruebatransacciones;

select * from dbo.pruebatransacciones;

commit transaction

DELETE FROM pruebatransacciones 
Insert dbo.pruebatransacciones(id,descripcion) values('1','valor original');

