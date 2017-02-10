CREATE OR REPLACE TYPE rectangle AS OBJECT
(length NUMBER,
 width NUMBER,
 member function enlarge( inc NUMBER) RETURN rectangle,
 NOT FINAL member PROCEDURE display) NOT FINAL
/

CREATE OR REPLACE TYPE BODY rectangle AS
   MEMBER FUNCTION enlarge(inc NUMBER) RETURN rectangle IS
   BEGIN
      RETURN rectangle(self.length + inc, self.width + inc);
   END enlarge;

   MEMBER PROCEDURE display IS
   BEGIN
      dbms_output.put_line('Length: '|| length);
      dbms_output.put_line('Width: '|| width);
   END display;
END;
/

CREATE OR REPLACE TYPE tabletop UNDER rectangle
(  
   material VARCHAR2(20),
   OVERRIDING member PROCEDURE display
)
/

CREATE OR REPLACE TYPE BODY tabletop AS
OVERRIDING MEMBER PROCEDURE display IS
    BEGIN
       dbms_output.put_line('Length: '|| length);
       dbms_output.put_line('Width: '|| width);
       dbms_output.put_line('Material: '|| material);
    END display;
END;
/

DECLARE
   t1 tabletop;
   t2 tabletop;
BEGIN
   t1:= tabletop(20, 10, 'Wood');
   t2 := tabletop(50, 30, 'Steel');
   t1.display;
   t2.display;
END;
/