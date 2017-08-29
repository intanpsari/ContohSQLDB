-- Practice 1
create table Customer (
	CustomerID integer auto_increment primary key,
    FirstName nvarchar(20) not null,
    MiddleName nvarchar(20) null,
    LastName nvarchar(20) null,
    AccountOpened datetime default now(),
    CreditsLimit decimal(6,2) default 1000.00
);


drop table Customer;

insert into Customer values(null,'Dan', "D", "Drayton", "2017-3-30 10:10:10",500.00);

select *from Customer;

insert into Customer values(null,'Matt', null, "Damon", default, default);

insert into Customer (FirstName, LastName) values ("Naomi", "Sharp");

-- error, firstname cannot be null
insert into Customer values (null, null, "F", "Formiga", "2017-3-30 10:10:10", 500);

insert into Customer values (null,"Patrick", "P", "Pesticide", "2017-3-30 10:10:10", null);

select *from Customer;

select CustomerID, Firstname, LastName from Customer; 

select 
	CustomerID, 
    concat(FirstName ," ",LastName) AS FullName,
	CreditsLimit, 
    CreditsLimit+CustomerID as KolomMaksa, 
    concat(CreditsLimit, CustomerID) as MaksaLagi,
	timestampdiff(day, AccountOpened, now()) as AccountDays 
from Customer;

select 
CustomerID, 
FirstName, 
LastName, 
CreditsLimit 
from Customer 
where CreditsLimit > 500;

