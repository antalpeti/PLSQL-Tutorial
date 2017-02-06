CREATE OR REPLACE PROCEDURE greetings
AS
BEGIN
   dbms_output.put_line('Hello World!');
END;
/

BEGIN
   greetings;
END;
/

DROP PROCEDURE greetings;