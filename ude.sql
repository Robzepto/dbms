declare
c_id emp.id%type:=&id;
c_name emp.name%type;
c_addr emp.address%type;
ex_invalid_id exception;
begin
if c_id<=0 then
raise ex_invalid_id;
else
select name,address into c_name,c_addr from emp where id=c_id;

dbms_output.put_line('name:'||c_name);
dbms_output.put_line('address:'||c_addr);
end if;
exception
when ex_invalid_id then dbms_output.put_line('id should be greater than zero');
when no_data_found then dbms_output.put_line('no such customer');
when others then dbms_output.put_line('error');
end;
/
