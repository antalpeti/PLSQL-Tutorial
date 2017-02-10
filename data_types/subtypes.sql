DECLARE
   SUBTYPE name IS CHAR(20);
   SUBTYPE message IS VARCHAR2(100);
   salutation name;
   greetings message;
BEGIN
   salutation := 'Reader ';
   greetings := 'Welcome to the World of PL/SQL';
   dbms_output.put_line('Hello ' || salutation || greetings);
END;
/