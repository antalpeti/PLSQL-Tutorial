DECLARE
   a NUMBER(2) := 10;
BEGIN
   a:= 10;
  -- check the boolean condition using if statement 
   IF( a < 20 ) THEN
      -- if condition is true then print the following  
      dbms_output.put_line('a is less than 20 ' );
   END IF;
   dbms_output.put_line('value of a is : ' || a);
END;
/

DECLARE
   c_id customers.id%TYPE := 1;
   c_sal  customers.salary%TYPE;
BEGIN
   SELECT  salary 
   INTO  c_sal
   FROM customers
   WHERE id = c_id;
   IF (c_sal <= 2000) THEN
      UPDATE customers 
      SET salary =  salary + 1000
         WHERE id = c_id;
      dbms_output.put_line ('Salary updated');
   END IF;
END;
/