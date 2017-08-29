create table Category(
  IdCategory Int Primary Key,
  NameCategory Varchar (20)
);

create table Books(
  ISBN int primary key,
  Title varchar(25) not null,
  Language varchar(25),
  tYear int,
  PageCount int,
  IdCategory Int,
  FOREIGN KEY (IdCategory) REFERENCES Category(IdCategory),
);


create table Author(
  idAuthor int primary key,
  NameAuthor varchar(25)
);

create table BookAuthor(
  ISBN int,
  idAuthor int,
  FOREIGN KEY (ISBN) REFERENCES Books(ISBN),
  FOREIGN KEY (idAuthor) REFERENCES Author(idAuthor)
);

create table Publisher(
  IdPublisher Int Primary Key,
  NamePublisher Varchar (20),
  City Varchar (20),
);

create table BookPublisher(
  ISBN Int,
  IdPublisher Int,
  FOREIGN KEY (ISBN) REFERENCES Books(ISBN),
  FOREIGN KEY (idPublisher) REFERENCES Publisher(idPublisher)
);

select *from Category;
select *from Books;
select *from Author;
select *from BookAuthor;
select *from Publisher;
select *from BookPublisher;


SELECT  *FROM Author  
  JOIN BookAuthor AS TEMP
  ON Author.idAuthor=TEMP.idAuthor
    JOIN BOOKS 
  ON Books.ISBN = TEMP.ISBN
    JOIN BookPublisher AS TEMP2
  ON Books.ISBN=TEMP2.ISBN
    JOIN Publisher 
  ON TEMP2.IdPublisher=Publisher.IdPublisher
    JOIN Category AS TEMP3
  ON TEMP3.IdCategory=Books.IdCategory order by NameAuthor desc;

truncate table BookAuthor;

Insert Into Category Values (1,'Technology'),(2,'Sistem Informasi'),(3,'Jaringan');
Insert Into Books Values
  (1234,'Alpro','IDN',2007,200,1),
  (1235,'HTML Learn','IDN',2012,300,2),
  (1236,'LAN','ENG',2012,150,3),
  (1237,'ASP NET','IDN',2009,315,2);

Insert Into Author Values
  (1,'Alvin'),(2,'Kemal'),(3,'Khidmat');

Insert Into BookAuthor Values
  (1234,1),(1235,2),(1236,3),(1236,1);


Insert Into Publisher Values 
  (1,'Erlangga','Bandung'),(2,'Yudistira','Jakarta'),(3,'Oxford','London');

Insert Into BookPublisher Values
  (1234,1),(1235,2),(1236,3),(1235,2);

-- title/language/tYear/PageCOunt/NameCategory
  SELECT ISBN, Title, Language, tYear,PageCount,NameCategory FROM Books
LEFT JOIN  Category
ON Books.IdCategory = Category.IdCategory
WHERE NameCategory LIKE  '%sistem%' or ISBN LIKE  '%sistem%' or Title LIKE  '%sistem%' or Language LIKE  '%sistem%' or tYear LIKE  '%sistem%' or PageCount LIKE  '%sistem%';

-- NameAuthor, Title, Books.ISBN, Language, tYear, PageCount
SELECT  NameAuthor, Title, Books.ISBN, Language, tYear, PageCount FROM Author JOIN BookAuthor AS TEMP ON Author.idAuthor=TEMP.idAuthor JOIN BOOKS ON BOOKS.ISBN = TEMP.ISBN WHERE Author.NameAuthor LIKE '%Alvin%' or Title LIKE '%Alvin%' or Title LIKE '%Alvin%'or Books.ISBN LIKE '%Alvin%' or Language LIKE '%Alvin%' or tYear LIKE '%Alvin%' or PageCount LIKE '%Alvin%';

-- cmd.CommandText = "SELECT DISTINCT * FROM Publisher JOIN BookPublisher AS TEMP ON Publisher.IdPublisher = TEMP.IdPublisher JOIN BOOKS ON Books.ISBN = TEMP.ISBN WHERE Publisher.NamePublisher LIKE '%" + textBox1.Text + "%' OR Publisher.City LIKE '%" + textBox1.Text + "%' OR Books.Title LIKE '%" + textBox1.Text + "%' OR Books.tYear LIKE '%" + textBox1.Text + "%' OR Books.Language LIKE '%" + textBox1.Text + "%' OR Books.ISBN LIKE '%" + textBox1.Text + "%' ";