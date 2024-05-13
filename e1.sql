DECLARE
c_id emp.id%type:=10;
c_name emp.name%type;
c_addr emp.address%type;
begin
SELECT name, address into c_name,c_addr FROM emp where id=c_id;
dbms_output.put_line('Name:'||c_name);
dbms_output.put_line('Address:'||c_addr);
exception
when no_data_found then dbms_output.put_line('no such customer');
when others then dbms_output.put_line('error');
end;
/
