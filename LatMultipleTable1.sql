drop table Product;
drop table Supplier;

create table Product(
	ProductID integer auto_increment primary key,
    Name varchar(20) not null,
    Price decimal(6,2) -- 1000000.00
);

CREATE TABLE Supplier (
    SupplierID INTEGER PRIMARY KEY, 
    Name VARCHAR(20) NOT NULL, 
    Phone CHAR(9) NULL
);

insert into Product values (null,"HP", 150);
insert into Product values (null,"Kulkas", 70);
insert into Product values (null,"TV", 900);

select * from Product;

alter table Product
	add Supplier integer default 1;
    
select * from Product;

INSERT INTO Supplier VALUES (1, "Moana", "234-13321");
INSERT INTO Supplier VALUES (2, "Aweu", "123-13321");
INSERT INTO Supplier VALUES (3, "Projen", "345");
INSERT INTO Supplier VALUES (4, "Pjen", "345");

-- delete from Supplier where SupplierID=4;
    
ALTER TABLE Product 
    ADD CONSTRAINT fk_product_supplier 
    FOREIGN KEY (Supplier) 
    REFERENCES Supplier(SupplierID);
    
select * from Supplier;

insert into Product values(null, "Pompa", 80,3);
insert into Product values(null, "Kabel", 80,4);