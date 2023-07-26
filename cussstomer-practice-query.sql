CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');


SELECT CustomerName, City, Country FROM Customers;


SELECT CustomerName, City, Country FROM Customers;



SELECT Country FROM Customers;


SELECT * FROM customers;


SELECT * FROM Customers
WHERE Country = 'Mexico';


SELECT * FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Products
WHERE Price = 18;




SELECT DISTINCT Country FROM Customers;


SELECT COUNT(DISTINCT Country) FROM Customers;


CREATE TABLE products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(50),
    Price DECIMAL(10, 2)
);
INSERT INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(6, 'Die Wandernde Kuh',	'Rita Mülle',	'Adenauerallee 900',	'Stuttgart',	70563,	'Germany');



INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUES
  (1, 'Product A', 101, 201, 'Pieces', 10.99),
  (2, 'Product B', 102, 202, 'Kilograms', 25.50),
  (3, 'Product C', 103, 201, 'Pieces', 5.75),
  (4, 'Product D', 101, 203, 'Liters', 8.25),
  (5, 'Product E', 104, 202, 'Kilograms', 12.35),
  (6, 'Product F', 102, 201, 'Pieces', 15.00),
  (7, 'Product G', 103, 203, 'Liters', 6.50),
  (8, 'Product H', 104, 202, 'Kilograms', 19.99),
  (9, 'Product I', 101, 201, 'Pieces', 7.80),
  (10, 'Product J', 102, 203, 'Liters', 9.45);
  
  SELECT * FROM products;
  
  SELECT * FROM products
--   where Price >=10.99;
--   WHERE price < 10.99;
-- WHERE Price <> 18;
  WHERE Price BETWEEN 6 AND 50;
  
  
  SELECT * FROM Customers
WHERE City LIKE 'l%';

SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Stuttgart';

SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';


SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

SELECT * FROM Customers
WHERE NOT Country = 'Germany';


SELECT * FROM Customers
WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');

SELECT * FROM Customers;

SELECT * FROM Customers
WHERE NOT Country = 'Germany' AND NOT Country = 'USA';

SELECT * FROM Customers
ORDER BY Country;


SELECT * FROM Customers
ORDER BY Country DESC;


SELECT * FROM Customers
ORDER BY Country, CustomerName;


SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;


SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;


SELECT * FROM customers;


UPDATE Customers
SET ContactName = 'subbu', City = 'Frankfurt'
WHERE CustomerID = 1;

UPDATE Customers
SET PostalCode = 00000
WHERE Country = 'Mexico';

SELECT * FROM Customers
LIMIT 3;






  
  
  
  
  



