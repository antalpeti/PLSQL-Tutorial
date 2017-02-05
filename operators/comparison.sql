DECLARE
PROCEDURE compare (value  varchar2,  pattern varchar2 ) is
BEGIN
   IF value LIKE pattern THEN
      dbms_output.put_line ('True');
   ELSE
      dbms_output.put_line ('False');
   END IF;
END;

BEGIN
   compare('Zara Ali', 'Z%A_i');
   compare('Nuha Ali', 'Z%A_i');
END;
/

DECLARE
   x number(2) := 10;
BEGIN
   IF (x between 5 and 20) THEN
      dbms_output.put_line('True');
   ELSE
      dbms_output.put_line('False');
   END IF;
   
   IF (x BETWEEN 5 AND 10) THEN
      dbms_output.put_line('True');
   ELSE
      dbms_output.put_line('False');
   END IF;
   
   IF (x BETWEEN 11 AND 20) THEN
      dbms_output.put_line('True');
   ELSE
      dbms_output.put_line('False');
   END IF;
END;
/

DECLARE
   letter varchar2(1) := 'm';
BEGIN
   IF (letter in ('a', 'b', 'c')) THEN
      dbms_output.put_line('True');
   ELSE
      dbms_output.put_line('False');
   END IF;
 
   IF (letter in ('m', 'n', 'o')) THEN
       dbms_output.put_line('True');
   ELSE
      dbms_output.put_line('False');
   END IF;
   
   IF (letter is null) THEN
    dbms_output.put_line('True');
   ELSE
      dbms_output.put_line('False');
   END IF;
END;
/