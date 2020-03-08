-- PRIMARY KEY
-- UNIQUE KEY
-- FORIGEN KEY
ALTER TABLE Orders
ADD FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID); 

-- Cust
-- ID
-- 1 John
-- 2 Jani
-- 3 Alex

-- Orders   CustID
-- 1        2 fk     
-- 2        3
-- 3        1
