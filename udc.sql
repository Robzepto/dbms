DECLARE
c_id emp.id%type;
c_name emp.name%type;
c_addr emp.address%type;
CURSOR c_emp is
SELECT id, name, address FROM emp;
begin
open c_emp;
loop
FETCH c_emp into c_id, c_name, c_addr;
EXIT WHEN c_emp%notfound;
dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
end loop;
close c_emp;
end;
/
