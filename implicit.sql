DECLARE
total_rows number(2);
BEGIN
UPDATE employee SET salary=salary+500;
IF sql%notfound
THEN
DBMS_OUTPUT.PUT_LINE('NO CUSTOMER SELECTED');
ELSIF sql%found THEN
total_rows:=sql%rowcount;
DBMS_OUTPUT.PUT_LINE(total_rows ||'CUSTOMER SELECTED');
END IF;
END;
/