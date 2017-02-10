DECLARE
   CURSOR c_customers IS
   SELECT  name FROM customers;
   TYPE c_list IS varray (6) OF customers.name%TYPE;
   name_list c_list := c_list();
   counter INTEGER :=0;
BEGIN
   FOR n IN c_customers LOOP
      counter := counter + 1;
      name_list.extend;
      name_list(counter)  := n.name;
      dbms_output.put_line('Customer('||counter ||'):'||name_list(counter));
   END LOOP;
END;
/