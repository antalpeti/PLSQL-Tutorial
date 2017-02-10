DECLARE
   c_id customers.id%TYPE := 8;
   c_name  customers.name%TYPE;
   c_addr customers.address%TYPE;
BEGIN
   SELECT  name, address INTO  c_name, c_addr
   FROM customers
   WHERE id = c_id;

   DBMS_OUTPUT.PUT_LINE ('Name: '||  c_name);
   DBMS_OUTPUT.PUT_LINE ('Address: ' || c_addr);
EXCEPTION
   WHEN no_data_found THEN
      dbms_output.put_line('No such customer!');
   WHEN OTHERS THEN
      dbms_output.put_line('Error!');
END;
/