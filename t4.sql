#Qa)

CREATE TABLE Department(
	`code` INT PRIMARY KEY NOT NULL,
    `title` VARCHAR(30),
    `dept_name` VARCHAR(30) UNIQUE NOT NULL,
    `dept_id` INT UNIQUE NOT NULL,
    `salary` INT,
    CHECK (`salary` > 2000 )
);

INSERT INTO Department(`code`, `title`, `dept_name`, `dept_id`,`salary`) 
VALUES (221, "Test Title", "Computer Science", 100, 20000);

#Qb)

CREATE TABLE Instructor(
	`name` VARCHAR(50) NOT NULL,
    `code` INT NOT NULL,
    `id` INT PRIMARY KEY AUTO_INCREMENT
);

INSERT INTO Instructor(`name`, `code`)
VALUES ("Raju Bai", 007);

