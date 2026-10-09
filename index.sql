USE sales;

-- Payment info: check number, date, amount
SELECT checkNumber, paymentDate, amount
FROM payments;

-- Orders in process, newest first
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Sales reps, highest employee number first
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- All office records
SELECT *
FROM offices;

-- Five cheapest products
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
