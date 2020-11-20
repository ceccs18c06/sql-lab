use lab;

#Q1
CREATE TABLE Employee (
	`empid` INT UNSIGNED PRIMARY KEY,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL,
    `salary` INT UNSIGNED NOT NULL
);


CREATE TABLE EmployeeDetails (
	`empid` INT UNSIGNED,
	`address` LONGTEXT NOT NULL,
    `email` VARCHAR(40) NOT NULL,
    `phone` VARCHAR(12) NOT NULL,
    `dob` DATE NOT NULL,
    FOREIGN KEY(`empid`) REFERENCES Employee(`empid`)
);

INSERT INTO Employee (`empid`, `first_name`, `last_name`, `salary`)
VALUES (1, "RAM", "DEV", 12000),
(2, "HAR", "BABU", 2000),
(3, "CHINKO", "CHINKA", 100000);


INSERT INTO EmployeeDetails (`empid`, `address`, `email`, `phone`, `dob`)
VALUES (1, "DEV RAM STREET", "ram@ramesh.cu", "1828282", "1993-2-22"),
(2, "HARSTREET", "har@gumul.cu", "34551231", "1993-5-20"),
(3, "CHINA TOWN", "chinko@chuzna.cu", "1234", "1998-4-12");

#Q2
SELECT * FROM Employee WHERE `empid` IN ( SELECT `empid` FROM EmployeeDetails );

#Q3
SELECT * FROM Employee WHERE `empid` NOT IN ( SELECT `empid` FROM EmployeeDetails );





