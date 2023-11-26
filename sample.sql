DECLARE
    CURSOR cur IS
      SELECT name,district,rank
      FROM   student1 e,rank d
      WHERE  d.roll_no = e.roll_no;
    v cur%ROWTYPE;
BEGIN
    OPEN cur;
    LOOP
        FETCH cur INTO v;
        exit WHEN cur%NOTFOUND;
       if(v.rank=100) then
        dbms_output.Put_line('there district :  '|| v.district|| '  '||'there name :'||v.name);
end if;
    END LOOP;
    CLOSE cur;
END; 
 /