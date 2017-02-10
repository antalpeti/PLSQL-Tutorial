CREATE OR REPLACE TYPE rectangle AS OBJECT
(length NUMBER,
 width NUMBER,
 member FUNCTION enlarge( inc NUMBER) RETURN rectangle,
 member PROCEDURE display,
 map member FUNCTION measure RETURN NUMBER
);
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

   MAP MEMBER FUNCTION measure RETURN NUMBER IS
   BEGIN
      RETURN (SQRT(length*length + width*width));
   END measure;
END;
/

DECLARE
   r1 rectangle;
   r2 rectangle;
   r3 rectangle;
   inc_factor NUMBER := 5;
BEGIN
   r1 := rectangle(3, 4);
   r2 := rectangle(5, 7);
   r3 := r1.enlarge(inc_factor);
   r3.display;

   IF (r1 > r2) THEN -- calling measure function
      r1.display;
   ELSE
      r2.display;
   END IF;
END;
/