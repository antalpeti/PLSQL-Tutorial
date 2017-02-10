DECLARE
   a INTEGER := 10;
   b INTEGER := 20;
   c INTEGER;
   f REAL;
BEGIN
   c := a + b;
   dbms_output.put_line('Value of c: ' || c);
   f := 70.0/3.0;
   dbms_output.put_line('Value of f: ' || f);
END;
/