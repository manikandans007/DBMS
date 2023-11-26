BEGIN
FOR row_data IN(SELECT * FROM
empolyee)
LOOP 
IF(row_data.SALARY>=5000)
THEN
DBMS_OUTPUT.PUT_LINE('ID :'|| row_data.ID ||'name :'|| row_data.NAME ||'salary :'|| row_data.SALARY ||'address :'|| row_data.ADDRESS);
ELSE
DBMS_OUTPUT.PUT_LINE('LESS SALARY');
END IF;
END LOOP;
END;
/
