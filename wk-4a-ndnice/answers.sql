-- Question 1
SELECT DATE(paymentDate) AS paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY DATE(paymentDate)
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
SELECT customerName, country,
AVG(creditLimit) AS 
average_creditlimit
FROM customers 
GROUP BY customerName, country;

-- Quesion 3
SELECT productCode, quantityOrdered,
SUM(quantityOrdered * priceEach)
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
SELECT checkNumber,
MAX(amount) AS highestAmount
FROM
payments
GROUP BY checkNumber;