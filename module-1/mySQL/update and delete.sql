# BONUS

SELECT * FROM
salespeople;

UPDATE salespeople
SET salesperson_store = 'Miami'
WHERE salesperson_store = 'Mimia';

SELECT *
FROM customers;

UPDATE customers
SET customer_email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE customers
SET customer_email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE customers
SET customer_email = 'hello@napoleon.me'
WHERE customer_name = 'Napoleon Bonaparte';

DELETE FROM cars
WHERE car_model = 'V60'; # this corresponds to ID 4. I did not include ID and only VIN in my database

SELECT *
FROM cars;