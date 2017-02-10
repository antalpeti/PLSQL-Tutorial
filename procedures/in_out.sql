DECLARE
   a NUMBER;
   b NUMBER;
   c NUMBER;

PROCEDURE findMin(x IN NUMBER, y IN NUMBER, z OUT NUMBER) IS
BEGIN
   IF x < y THEN
      z:= x;
   ELSE
      z:= y;
   END IF;
END; 

BEGIN
   a:= 23;
   b:= 45;
   findMin(a, b, c);
   findMin(x=>a, y=>b, z=>c);
   findMin(a, b, z=>c);
   dbms_output.put_line(' Minimum of (23, 45) : ' || c);
END;
/

DECLARE
   a NUMBER;
PROCEDURE squareNum(x IN OUT NUMBER) IS
BEGIN
  x := x * x;
END; 
BEGIN
   a:= 23;
   squareNum(a);
   dbms_output.put_line(' Square of (23): ' || a);
END;
/