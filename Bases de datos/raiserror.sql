declare @tipo int,@clasificacion int
set @tipo=1
set @clasificacion=3
if (@tipo=1 and @clasificacion=3)
begin
raiserror ('el tipo no puede valer uno y la clasificacion 3',
16,
1
)
end 
select * from sys.messages