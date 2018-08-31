SET NOCOUNT ON
begin try
select 2/1
print 'No error'
end try
begin catch 
print 'Realmente hay un error'
end catch