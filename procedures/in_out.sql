DECLARE
   a number;
   b number;
   c number;

PROCEDURE findMin(x IN number, y IN number, z OUT number) IS
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
   a number;
PROCEDURE squareNum(x IN OUT number) IS
BEGIN
  x := x * x;
END; 
BEGIN
   a:= 23;
   squareNum(a);
   dbms_output.put_line(' Square of (23): ' || a);
END;
/