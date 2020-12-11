#a
CREATE TABLE Store (
    `order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` INTEGER DEFAULT 1,
    `price` INTEGER NOT NULL,
    `discount` INTEGER DEFAULT 0,
    `mrp` INTEGER NOT NULL
);


#b
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("PST", "PASTE", 2, 20, 0, 20),("BOK", "NOTEBOOK", 10, 45, 5, 50);

#c
SELECT * FROM Store;


#d
CREATE VIEW CART AS
SELECT `item`, `quantity` FROM Store;

#e
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("GLD", "GOLD", 10, 5000, 0, 5000);

SELECT * FROM CART;

#f
DROP VIEW CART;

