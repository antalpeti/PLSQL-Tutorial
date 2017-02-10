DECLARE
   -- Global variables 
   num1 NUMBER := 95; 
   num2 NUMBER := 85; 
BEGIN 
   dbms_output.put_line('Outer Variable num1: ' || num1);
   dbms_output.put_line('Outer Variable num2: ' || num2);
   DECLARE 
      -- Local variables
      num1 NUMBER := 195; 
      num2 NUMBER := 185; 
   BEGIN 
      dbms_output.put_line('Inner Variable num1: ' || num1);
      dbms_output.put_line('Inner Variable num2: ' || num2);
   END; 
END;
/