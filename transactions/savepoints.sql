INSERT INTO customers (id,name,age,address,salary)
VALUES (7, 'Rajnish', 27, 'HP', 9500.00 );
INSERT INTO customers (id,name,age,address,salary)
VALUES (8, 'Riddhi', 21, 'WB', 4500.00 );
SAVEPOINT sav1;

UPDATE customers
SET salary = salary + 1000;
ROLLBACK TO sav1;

UPDATE customers
SET salary = salary + 1000
WHERE id = 7;
UPDATE customers
SET salary = salary + 1000
WHERE id = 8;
COMMIT;