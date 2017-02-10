DECLARE
   TYPE namesarray IS VARRAY(5) OF VARCHAR2(10);
   TYPE grades IS VARRAY(5) OF INTEGER;
   names namesarray;
   marks grades;
   total INTEGER;
BEGIN
   names := namesarray('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
   marks:= grades(98, 97, 78, 87, 92);
   total := names.COUNT;
   dbms_output.put_line('Total '|| total || ' Students');
   FOR i IN 1 .. total LOOP
      dbms_output.put_line('Student: ' || names(i) || '   Marks: ' || marks(i));
   END LOOP;
END;
/