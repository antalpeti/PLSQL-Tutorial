DECLARE
   name varchar2(20);
   company varchar2(30);
   introduction clob;
   choice char(1);
BEGIN
   name := 'John Smith';
   company := 'Infotech';
   introduction := 'Hello! I''m John Smith from Infotech.';
   choice := 'y';
   IF choice = 'y' THEN
      dbms_output.put_line(name);
      dbms_output.put_line(company);
      dbms_output.put_line(introduction);
   END IF;
END;
/

DECLARE
   greetings varchar2(11) := 'hello world';
BEGIN
   dbms_output.put_line(UPPER(greetings));
   
   dbms_output.put_line(LOWER(greetings));
   
   dbms_output.put_line(INITCAP(greetings));
   
   /* retrieve the first character in the string */
   dbms_output.put_line ( SUBSTR (greetings, 1, 1));
   
   /* retrieve the last character in the string */
   dbms_output.put_line ( SUBSTR (greetings, -1, 1));
   
   /* retrieve five characters, 
      starting from the seventh position. */
   dbms_output.put_line ( SUBSTR (greetings, 7, 5));
   
   /* retrieve the remainder of the string,
      starting from the second position. */
   dbms_output.put_line ( SUBSTR (greetings, 2));
   
   /* find the location of the first "e" */
   dbms_output.put_line ( INSTR (greetings, 'e'));
END;
/

DECLARE
   greetings varchar2(30) := '......Hello World.....';
BEGIN
   dbms_output.put_line(RTRIM(greetings,'.'));
   dbms_output.put_line(LTRIM(greetings, '.'));
   dbms_output.put_line(TRIM( '.' from greetings));
END;
/

BEGIN
   dbms_output.put_line(NVL(null,'the parameter is null'));
   dbms_output.put_line(NVL('value','the parameter is null'));
   dbms_output.put_line(REPLACE('---value---', '-', '+'););
END;
/