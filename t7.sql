-- a. Create a table store. Fields are order no, code, item, quantity, price, discount, mrp --
CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `item` VARCHAR(20) NOT NULL,
    `quantity` INTEGER UNSIGNED NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT(0),
    `mrp` DECIMAL(6, 2) NOT NULL
);

-- b. Insert values into the table --
INSERT INTO Store (`item`, `quantity`, `discount`, `mrp`)
VALUES ('book', 5, 0, 50), ('paper', 100, 0, 1);

-- c. Display the table --
SELECT * FROM Store;

-- d. Write an SQL query to display the reminder, if the amount of an each item in store sis divided by 9. --
SELECT MOD(`mrp`, 9) FROM Store;

-- e. Write SQL query to display the amount in store and its square --
SELECT `mrp`, POWER(`mrp`, 2) FROM Store;

-- f. Write SQL query to divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer. --
SELECT ROUND(`mrp` / 7, 0) FROM Store;