create table Product(
	ProductID integer auto_increment primary key,
    Name varchar(20) not null,
    Price decimal(6,2) -- 1000000.00
);

select * from Product;

drop table Product;

insert into Product (Name) values ("Makasih");
insert into Product values (3,"sama",30);
insert into Product values (30,"intan",30.3);
insert into Product values (3,"apa",20); -- ini eror karena udah ada 3
insert into Product (Name,Price) values ("yaya",40.9);
insert into Product (Price) values (40.9); -- ini error karena name ga boleh null

alter table Product 
	add Supplier integer not null default 1; 
    
insert into Product (Name) values ("sofi");
insert into Product (Name, Supplier) values ("fau",2);

select Name as Nama_nya from Product;
select Price * 0.5 as SalePrice from Product where Name = "Intan";

