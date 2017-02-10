DECLARE
   i NUMBER(1);
   j NUMBER(1);
BEGIN
   << outer_loop >>
   FOR i IN 1..3 LOOP
      << inner_loop >>
      FOR j IN 1..3 LOOP
         dbms_output.put_line('i is: '|| i || ' and j is: ' || j);
      END LOOP inner_loop;
   END LOOP outer_loop;
END;
/