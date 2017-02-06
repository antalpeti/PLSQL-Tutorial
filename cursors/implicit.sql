DECLARE 
   total_rows number(2);
BEGIN
   UPDATE customers
   SET salary = salary + 500;
   IF sql%notfound THEN
      dbms_output.put_line('no customers selected');
   ELSIF sql%found THEN
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' customers selected ');
   END IF; 
   IF sql%isopen THEN
      dbms_output.put_line( 'Implicit cursor is open. ');
   ELSE
      dbms_output.put_line( 'Implicit cursor is closed. ');
   END IF;
END;
/