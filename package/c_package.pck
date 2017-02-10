CREATE OR REPLACE PACKAGE c_package AS
   -- Adds a customer
   PROCEDURE addCustomer(c_id   customers.id%TYPE,
   c_name  customers.name%TYPE,
   c_age  customers.age%TYPE,
   c_addr customers.address%TYPE, 
   c_sal  customers.salary%TYPE);
  
   -- Removes a customer
   PROCEDURE delCustomer(c_id  customers.id%TYPE);
   --Lists all customers
   PROCEDURE listCustomer;
 
END c_package;
/

CREATE OR REPLACE PACKAGE BODY c_package AS
   PROCEDURE addCustomer(c_id  customers.id%TYPE,
      c_name customers.name%TYPE,
      c_age  customers.age%TYPE,
      c_addr  customers.address%TYPE, 
      c_sal   customers.salary%TYPE)
   IS
   BEGIN
      INSERT INTO customers (id,name,age,address,salary)
         VALUES(c_id, c_name, c_age, c_addr, c_sal);
   END addCustomer;
  
   PROCEDURE delCustomer(c_id   customers.id%TYPE) IS
   BEGIN
       DELETE FROM customers
         WHERE id = c_id;
   END delCustomer;

   PROCEDURE listCustomer IS
   CURSOR c_customers IS
      SELECT  name FROM customers;
   TYPE c_list IS TABLE OF customers.name%TYPE;
   name_list c_list := c_list();
   counter integer :=0;
   BEGIN
      FOR n IN c_customers LOOP
      counter := counter +1;
      name_list.EXTEND;
      name_list(counter)  := n.name;
      dbms_output.put_line('Customer(' ||counter|| ')'||name_list(counter));
      END LOOP;
   END listCustomer;
END c_package;
/