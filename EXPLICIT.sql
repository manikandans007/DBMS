DECLARE
c_id employee.id%type;
c_name employee.name%type;
c_city employee.city%type;
CURSOR c_customer is SELECT id,name,city from employee;
BEGIN
OPEN c_customer;
LOOP
FETCH c_customer into c_id,c_name,c_city;
EXIT WHEN c_customer%notfound;
DBMS_OUTPUT.PUT_LINE(c_id||''||c_name);
END LOOP; 
CLOSE c_customer;
END;
/