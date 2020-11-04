create procedure div
@X int,@Y int
as
begin try
declare @Z int 
set @Z=1
set @Z=@X/@Y
print @Z
end try
begin catch
print 'divided by zero'
end catch

exec div 10,0