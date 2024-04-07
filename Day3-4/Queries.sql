-- SQLite

-- Projections
select * from Authors
select * from AuthorDetails
select * from Books


-- Get name of persons who lives in nepal
select Name from Authors where Address='Nepal'

-- Insert
INSERT INTO Authors
VALUES (NULL, 'Tom B. Erichsen', 'F', 'Norway', 'tom@gmail.com', '1960/12/23', 1);

INSERT INTO Authors
VALUES (NULL, 'Sandip Chaudhary', 'M', 'Dang, Nepal', 'sandip@gmail.com', '2000/12/23', 1);

INSERT INTO AuthorDetails
VALUES (NULL, 'Masters in Computer Science', 'None', 'AppSoft', 1);

INSERT INTO AuthorDetails
VALUES (NULL, 'MIT', 'NLP/ML', 'AppSoft', 2);

INSERT INTO Books
VALUES (NULL, 'Machine Learning', 'III', 1000.50, 'AB234234FGHD', '2012/12/23');

--Create queries

CREATE TABLE Publishers (
    Id integer PRIMARY KEY,
    Name nvarchar(200),
    Address nvarchar(400),
    Phone varchar(10),
    RegistrationNo nvarchar(100)
);

CREATE TABLE AuthorDetails (
    Id integer PRIMARY KEY,
    Education nvarchar(200),
    Publications nvarchar(400),
    Organization varchar(100),
    AuthorId interger,
    FOREIGN KEY(AuthorId) REFERENCES Authors(Id)
);

-- Day 4
create table Books 
(
    Id integer PRIMARY KEY, 
    Title text not null, 
    Edition text not null,
    Price real null, 
    ISBN text null, 
    Published text not null
);

CREATE TABLE Authors(
    Id integer PRIMARY KEY,
    Name nvarchar(350),
    Gender char(1),
    Address nvarchar(200),
    Email nvarchar(200),
    Dob varchar(100),
    BookId integer,
    FOREIGN KEY(BookId) REFERENCES Books(Id)
);

-- ISBN - Candidate Key
-- Id - Candidate key
-- Id - PK


-- Delete table
drop table Authors
drop table AuthorDetails

-- Relations: one to one, one to many, many to many

-- Constraints
ALTER TABLE Authors
ADD FOREIGN KEY (AuthorDetailId) REFERENCES AuthorDetails(Id);


-- Classwork 1: 
-- Get authors details like Name, Contact Details and the organization he/she is associated with.
SELECT a.Name, a.Email, ad.Organization
FROM Authors a
INNER JOIN AuthorDetails ad ON a.Id = ad.AuthorId

-- Classwork 2
-- Create another Books (Id, Title, Edition, Price, ISBN, Published)
-- Relate Books and Authors (One-To-Many), FK on many side (Authors)
-- Insert some rows in Books and Authors table

-- Day 4: one to many
create table Books 
(
    Id integer PRIMARY KEY, 
    Title text not null, 
    Edition text not null,
    Price real null, 
    ISBN text null, 
    Published text not null
);

drop table Authors;

CREATE TABLE Authors(
    Id integer PRIMARY KEY,
    Name nvarchar(350),
    Gender char(1),
    Address nvarchar(200),
    Email nvarchar(200),
    Dob varchar(100),
    BookId integer,
    FOREIGN KEY(BookId) REFERENCES Books(Id)
);

INSERT INTO Books
VALUES (NULL, 'Machine Learning', 'III', 1000.50, 'AB234234FGHD', '2012/12/23');

INSERT INTO Authors
VALUES (NULL, 'Tom B. Erichsen', 'F', 'Norway', 'tom@gmail.com', '1960/12/23', 1);

INSERT INTO Authors
VALUES (NULL, 'Sandip Chaudhary', 'M', 'Dang, Nepal', 'sandip@gmail.com', '2000/12/23', 1);


-- Who are the authors of book titled "Machine Learning"
select a.Name from Authors a
INNER JOIN Books b on b.Id == a.BookId
where b.Title like '%Machine Learning%'
