drop table Supplier;
CREATE TABLE Supplier (
    SupplierID INTEGER PRIMARY KEY, 
    Name VARCHAR(20) NOT NULL, 
    Phone CHAR(9) NULL
);

INSERT INTO Supplier VALUES (1, "Moana", "234-13321");
INSERT INTO Supplier VALUES (2, "Aweu", "123-13321");
INSERT INTO Supplier VALUES (3, "Projen", "345");
INSERT INTO Supplier VALUES (4, "Pjen", "345");


ALTER TABLE Product 
    ADD CONSTRAINT fk_product_supplier 
    FOREIGN KEY (Supplier) 
    REFERENCES Supplier(SupplierID);

select * FROM Supplier;