DECLARE
 a INTEGER;
 b INTEGER;
 c INTEGER;
FUNCTION FindMax(x IN INTEGER,y IN INTEGER)
RETURN INTEGER
IS 
z INTEGER;
BEGIN
IF x>y then
z:=x;
ELSE
z:=Y;
END IF;
RETURN z;
END;

BEGIN
a:=&a;
b:=&b;
c:=FindMax(a,b);
DBMS_OUTPUT.PUT_LINE('maximum of ('||a||','||b||')'||c);
END;
/

