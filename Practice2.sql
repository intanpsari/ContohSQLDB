CREATE TABLE dboAccountManagers (
    EmployeeID INTEGER AUTO_INCREMENT PRIMARY KEY, 
    FirstName VARCHAR(20) NOT NULL, 
    LastName NVARCHAR(20) NULL, 
    DateOfBirth DATE NOT NULL, 
    Salary DECIMAL(10, 2) NOT NULL);
    
INSERT INTO dboAccountManagers VALUES (1, "Martin", "Ødegaard", "1994-07-26", 92000.00);

INSERT INTO dboAccountManagers VALUES (3, "Rene", "Rovers", "1994-12-06", 85000);

INSERT INTO dboAccountManagers VALUES (5, "Dannie", 8411, "1994-07-26", 75000.25);

-- error
INSERT INTO dboAccountManagers VALUES (7, "Aisha", "Ainun", "1994-07-26", $65000);

-- error
INSERT INTO dboAccountManagers VALUES (9, "Bolled", "Bigmac", "1994-07-26", "$65000");

INSERT INTO dboAccountManagers VALUES (11, "Bolled", "Bigmac", "1994-07-26", "65000");

INSERT INTO dboAccountManagers VALUES (12, "Hikmat", "Asep", "1994-07-26", 125000);

select *from dboAccountManagers;

SELECT EmployeeID + Salary FROM dboAccountManagers;

SELECT CONCAT(FirstName, LastName) FROM dboAccountManagers;

SELECT CONCAT(FirstName, Salary) FROM dboAccountManagers;

SELECT DateOfBirth + EmployeeID FROM dboAccountManagers;

SELECT CONCAT(FirstName, DateOfBirth) FROM dboAccountManagers;

select CreditsLimit, Salary, Customer.FirstName from Customer, dboAccountManagers where Customer.CustomerID = dboAccountManagers.EmployeeID;

select * from Customer;

-- alter table Customer drop column AccountManager;

alter table Customer add AccountManager int ;

ALTER TABLE Customer 
    ADD CONSTRAINT fk_product_accountManager 
    FOREIGN KEY (AccountManager) 
    REFERENCES dboAccountManagers(EmployeID);

update Customer set AccountManager = 1;

INSERT INTO Customer VALUES (null,"Rhonda", NULL, "Hughes", DEFAULT, 1000, 2);

INSERT INTO Customer VALUES (null,"Arnold", NULL, "Swaseneger", DEFAULT, 800, 9);
-- delete from Customer where CustomerID=7;


