-- SQLite

-- Projections
select * from Authors
select * from AuthorDetails


-- Get name of persons who lives in nepal
select Name from Authors where Address='Nepal'

-- Insert
INSERT INTO Authors
VALUES (NULL, 'Tom B. Erichsen', 'F', 'Norway', 'tom@gmail.com', '1960/12/23');

INSERT INTO AuthorDetails
VALUES (NULL, 'Masters in Computer Science', 'None', 'AppSoft', 1);

INSERT INTO AuthorDetails
VALUES (NULL, 'MIT', 'NLP/ML', 'AppSoft', 2);

--Create Publishers table
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

-- Delete table
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
