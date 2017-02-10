DECLARE
   num NUMBER;
   factorial NUMBER;

FUNCTION fact(x NUMBER)
RETURN NUMBER 
IS
   f NUMBER;
BEGIN
   IF x=0 THEN
      f := 1;
   ELSE
      f := x * fact(x-1);
   END IF;
RETURN f;
END;

BEGIN
   num:= 6;
   factorial := fact(num);
   dbms_output.put_line(' Factorial '|| num || ' is ' || factorial);
END;
/