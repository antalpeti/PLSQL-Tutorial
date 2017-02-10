DECLARE 
   total_rows NUMBER(2);
BEGIN
   UPDATE customers
   SET salary = salary + 500;
   IF SQL%NOTFOUND THEN
      dbms_output.put_line('no customers selected');
   ELSIF SQL%FOUND THEN
      total_rows := SQL%ROWCOUNT;
      dbms_output.put_line( total_rows || ' customers selected ');
   END IF; 
   IF SQL%ISOPEN THEN
      dbms_output.put_line( 'Implicit cursor is open. ');
   ELSE
      dbms_output.put_line( 'Implicit cursor is closed. ');
   END IF;
END;
/