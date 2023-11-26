DECLARE
 marks INTEGER;
 BEGIN
 marks:=&marks;
 CASE
 WHEN marks>=90 THEN DBMS_OUTPUT.PUT_LINE('Excellent');
 WHEN marks>=80 AND marks < 90 THEN DBMS_OUTPUT.PUT_LINE('Very Good');
 WHEN marks>=70 AND marks < 80 THEN DBMS_OUTPUT.PUT_LINE('Good');
 WHEN marks>=60 AND marks < 70 THEN DBMS_OUTPUT.PUT_LINE('Fair');
 WHEN marks>=50 AND marks < 60 THEN DBMS_OUTPUT.PUT_LINE('Poor');
 ELSE DBMS_OUTPUT.PUT_LINE('No such Grade');
 END CASE;
 DBMS_OUTPUT.PUT_LINE('Marks is '||marks);
 END;
 /
