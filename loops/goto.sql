DECLARE
   a NUMBER(2) := 9;
BEGIN
   <<loopstart>>
   -- while loop execution 
   WHILE a < 20 LOOP
      a := a + 1;
      IF a = 15 THEN
         GOTO loopstart;
      END IF;
      dbms_output.put_line ('value of a: ' || a);
   END LOOP;
END;
/