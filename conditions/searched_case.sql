DECLARE
   grade CHAR(1) := 'B';
BEGIN
   CASE 
      WHEN grade = 'A' THEN dbms_output.put_line('Excellent');
      WHEN grade = 'B' THEN dbms_output.put_line('Very good');
      WHEN grade = 'C' THEN dbms_output.put_line('Well done');
      WHEN grade = 'D' THEN dbms_output.put_line('You passed');
      WHEN grade = 'F' THEN dbms_output.put_line('Better try again');
      ELSE dbms_output.put_line('No such grade');
   END CASE;
END;
/