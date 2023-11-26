DECLARE
a number;
b number;

PROCEDURE Rank(x IN NUMBER) IS
BEGIN
b:=x;
LOOP 
IF(b>100) then
FOR new_data IN(select * from student1)
loop
DBMS_OUTPUT.PUT_LINE('district they from:'||new_data.district);
END LOOP;
END IF;
END LOOP;
END;
BEGIN
FOR row_data IN(select * from student1_rank)
LOOP
a:=row_data.rank;
Rank(a);
END LOOP;
END;
/
