CREATE OR REPLACE FUNCTION totalCustomers
RETURN number AS
   total number(2) := 0;
BEGIN
   SELECT count(*) into total
   FROM customers;
   
   RETURN total;
END;
/

DECLARE
   c number(2);
BEGIN
   c := totalCustomers();
   dbms_output.put_line('Total no. of Customers: ' || c);
END;
/

DROP FUNCTION totalCustomers;