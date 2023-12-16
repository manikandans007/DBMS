HEADER
 CREATE PACKAGE cust_sal AS
 2 PROCEDURE find_sal(c_id employee.id%type);
 3 END cust_sal;
 4 /
BODY
CREATE OR REPLACE PACKAGE BODY c_sal AS
PROCEDURE find_sal(c_id employee.id%TYPE) IS
c_sally employee.salary%TYPE;
BEGIN
SELECT salary INTO c_sally FROM employee where id = c_id;
dbms_output.put_output.line('salary of employee:'||c_sally);
END find_sal;
END c_sal;
/ 


CALLING
code employee.id%type:=&cc_id;
  begin
 cust_sal.find_sal(code);
 END;
 /
