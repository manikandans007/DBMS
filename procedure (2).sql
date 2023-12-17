DECLARE 
 a INTEGER;
 b INTEGER;
 c INTEGER;
PROCEDURE findMin(x IN INTEGER, y IN INTEGER, z OUT INTEGER) IS 
BEGIN 
 IF x < y THEN 
 z:= x; 
 ELSE 
 z:= y;  
END IF; 
END; 
BEGIN 
 a:= &a; 
 b:= &b; 
 findMin(a, b, c); 
 dbms_output.put_line(' Minimum of a and b is : ' || c); 
END; 
/









CREATE OR REPLACE PROCEDURE insertion(
c_name publisher.name%TYPE,
c_city publisher.city%TYPE,
c_grades  publisher.grades%TYPE 
)
IS
BEGIN
insert into publisher(name,city,grades)values(c_name,c_city,c_grades);
commit;
END;
/
exec insertion(values);
