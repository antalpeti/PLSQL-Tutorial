DECLARE
   TYPE names_table IS TABLE OF VARCHAR2(10);
   TYPE grades IS TABLE OF INTEGER;

   names names_table;
   marks grades;
   total integer;
BEGIN
   names := names_table('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
   marks:= grades(98, 97, 78, 87, 92);
   total := names.count;
   dbms_output.put_line('Total '|| total || ' Students');
   FOR i IN 1 .. total LOOP
      dbms_output.put_line('Student:'||names(i)||', Marks:' || marks(i));
   end loop;
END;
/

DECLARE
   CURSOR c_customers is 
      SELECT  name FROM customers;

   TYPE c_list IS TABLE of customers.name%type;
   name_list c_list := c_list();
   counter integer :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter +1;
      name_list.extend;
      name_list(counter)  := n.name;
      dbms_output.put_line('Customer('||counter||'):'||name_list(counter));
   END LOOP;
END;
/

DECLARE
   CURSOR c_customers is 
      SELECT  * FROM customers;

   TYPE c_list IS TABLE of customers%rowtype;
   customer_list c_list := c_list();
   counter integer :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter +1;
      customer_list.extend;
      customer_list(counter)  := n;
      dbms_output.put_line('Customer('||counter||'):'||customer_list(counter).name||', '||customer_list(counter).age||
      ', '||customer_list(counter).salary||', '||customer_list(counter).address);
   END LOOP;
   dbms_output.put_line('COUNT:'||customer_list.count);
   dbms_output.put_line('FIRST:'||customer_list.first);
   dbms_output.put_line('LAST:'||customer_list.last);
   dbms_output.put_line('PRIOR(3):'||customer_list.prior(3));
   dbms_output.put_line('NEXT(3):'||customer_list.next(3));
END;
/