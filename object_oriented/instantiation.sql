CREATE OR REPLACE TYPE address AS OBJECT
(house_no VARCHAR2(10),
 street VARCHAR2(30),
 city VARCHAR2(20),
 state VARCHAR2(10),
 pincode VARCHAR2(10)
);
/

CREATE OR REPLACE TYPE customer AS OBJECT
(code number(5),
 name VARCHAR2(30),
 contact_no VARCHAR2(12),
 addr address,
 MEMBER PROCEDURE display
);
/

DECLARE
   residence address;
BEGIN
   residence := address('103A', 'M.G.Road', 'Jaipur', 'Rajasthan','201301');
   dbms_output.put_line('House No: '|| residence.house_no);
   dbms_output.put_line('Street: '|| residence.street);
   dbms_output.put_line('City: '|| residence.city);
   dbms_output.put_line('State: '|| residence.state);
   dbms_output.put_line('Pincode: '|| residence.pincode);
END;
/