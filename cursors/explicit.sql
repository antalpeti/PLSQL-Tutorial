DECLARE
   c_id customers.id%TYPE;
   c_name customers.name%TYPE;
   c_addr customers.address%TYPE;
   CURSOR c_customers IS
      SELECT id, name, address FROM customers;
BEGIN
   OPEN c_customers;
   LOOP
      FETCH c_customers INTO c_id, c_name, c_addr;
      EXIT WHEN c_customers%NOTFOUND;
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
   END LOOP;
   CLOSE c_customers;
END;
/