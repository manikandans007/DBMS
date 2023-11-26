DECLARE
c_id employee.id%type:=&cc_id;
c_name employee.name%type;
BEGIN
SELECT id,name INTO c_id,c_name FROM employee WHERE id = c_id;
dbms_output.put_line('id:'||c_id);
dbms_output.put_line('name:'||c_name);
EXCEPTION 
WHEN no_data_found THEN
dbms_output.put_line('no customer found');
WHEN others THEN
dbms_output.put_line('ERROR OCUURED');
END;
/
 