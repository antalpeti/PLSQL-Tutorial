DECLARE
   a NUMBER;
   b NUMBER;
   c NUMBER;
FUNCTION findMax(x IN NUMBER, y IN NUMBER) 
RETURN NUMBER
IS
    z NUMBER;
BEGIN
   IF x > y THEN
      z:= x;
   ELSE
      z:= y;
   END IF;

   RETURN z;
END; 
BEGIN
   a:= 23;
   b:= 45;

   c := findMax(a, b);
   dbms_output.put_line(' Maximum of (23,45): ' || c);
   c := findMax(b, a);
   dbms_output.put_line(' Maximum of (23,45): ' || c);
END;
/