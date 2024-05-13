create or replace procedure "INSERTUSER"
(id IN NUMBER,
name IN VARCHAR2)
is
begin
insert into proc values(id,name);
end;
/


BEGIN
insertuser(101,'Rahul');
dbms_output.put_line('record inserted successfully');
END;
/
