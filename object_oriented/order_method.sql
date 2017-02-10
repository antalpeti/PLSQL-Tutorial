CREATE OR REPLACE TYPE rectangle AS OBJECT
(length NUMBER,
 width NUMBER,
 member PROCEDURE display,
 order member FUNCTION measure(r rectangle) RETURN NUMBER
);
/

CREATE OR REPLACE TYPE BODY rectangle AS
   MEMBER PROCEDURE display IS
   BEGIN
      dbms_output.put_line('Length: '|| length);
      dbms_output.put_line('Width: '|| width);
   END display;

   ORDER MEMBER FUNCTION measure(r rectangle) RETURN NUMBER IS
   BEGIN
      IF(SQRT(self.length*self.length + self.width*self.width)> SQRT(r.length*r.length + r.width*r.width)) THEN
         RETURN(1);
      ELSE
         RETURN(-1);
      END IF;
   END measure;
END;
/

DECLARE
   r1 rectangle;
   r2 rectangle;
BEGIN
   r1 := rectangle(23, 44);
   r2 := rectangle(15, 17);
   r1.display;
   r2.display;
   IF (r1 > r2) THEN -- calling measure function
      r1.display;
   ELSE
      r2.display;
   END IF;
END;
/