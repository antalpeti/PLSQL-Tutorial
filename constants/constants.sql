DECLARE
   -- constant declaration
   pi CONSTANT NUMBER := 3.141592654;
   -- other declarations
   radius NUMBER(5,2); 
   dia NUMBER(5,2); 
   circumference NUMBER(7, 2);
   area NUMBER (10, 2);
BEGIN 
   -- processing
   radius := 9.5; 
   dia := radius * 2; 
   circumference := 2.0 * pi * radius;
   area := pi * radius * radius;
   -- output
   dbms_output.put_line('Radius: ' || radius);
   dbms_output.put_line('Diameter: ' || dia);
   dbms_output.put_line('Circumference: ' || circumference);
   dbms_output.put_line('Area: ' || area);
END;
/

DECLARE
   message  VARCHAR2(30):= 'That''s tutorialspoint.com!';
BEGIN
   dbms_output.put_line(message);
END;
/