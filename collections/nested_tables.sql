DECLARE
   TYPE names_table IS TABLE OF VARCHAR2(10);
   TYPE grades IS TABLE OF INTEGER;

   names names_table;
   marks grades;
   total INTEGER;
BEGIN
   names := names_table('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
   marks:= grades(98, 97, 78, 87, 92);
   total := names.COUNT;
   dbms_output.put_line('Total '|| total || ' Students');
   FOR i IN 1 .. total LOOP
      dbms_output.put_line('Student:'||names(i)||', Marks:' || marks(i));
   END LOOP;
END;
/

DECLARE
   CURSOR c_customers IS 
      SELECT  name FROM customers;

   TYPE c_list IS TABLE OF customers.name%TYPE;
   name_list c_list := c_list();
   counter INTEGER :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter +1;
      name_list.EXTEND;
      name_list(counter)  := n.name;
      dbms_output.put_line('Customer('||counter||'):'||name_list(counter));
   END LOOP;
END;
/

DECLARE
   CURSOR c_customers IS 
      SELECT  * FROM customers;

   TYPE c_list IS TABLE OF customers%ROWTYPE;
   customer_list c_list := c_list();
   counter INTEGER :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter +1;
      customer_list.EXTEND;
      customer_list(counter)  := n;
      dbms_output.put_line('Customer('||counter||'):'||customer_list(counter).name||', '||customer_list(counter).age||
      ', '||customer_list(counter).salary||', '||customer_list(counter).address);
   END LOOP;
   dbms_output.put_line('COUNT:'||customer_list.COUNT);
   dbms_output.put_line('FIRST:'||customer_list.FIRST);
   dbms_output.put_line('LAST:'||customer_list.LAST);
   dbms_output.put_line('PRIOR(3):'||customer_list.PRIOR(3));
   dbms_output.put_line('NEXT(3):'||customer_list.NEXT(3));
END;
/