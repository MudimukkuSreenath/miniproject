create trigger t1 on emp
after insert,update,delete
as 
begin
if datename(dw,getdate())='sunday'
begin
rollback
raiseerror({'sunday transactions are not allowe'},15,1)

end
end
