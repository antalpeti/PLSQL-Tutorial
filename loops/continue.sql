DECLARE
   a NUMBER(2) := 9;
BEGIN
   -- while loop execution 
   WHILE a < 20 LOOP
      a := a + 1;
      IF a = 15 THEN
         -- skip the loop using the CONTINUE statement
         CONTINUE;
      END IF;
      dbms_output.put_line ('value of a: ' || a);
   END LOOP;
END;
/