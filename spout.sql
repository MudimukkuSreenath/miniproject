create procedure addnumber
@X int,@Y int,
@Z int output
as
set @Z=@X+@Y
declare @k int
exec addnumber 10,20,@K output
print @k