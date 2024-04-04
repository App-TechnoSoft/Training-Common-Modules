-- SQLite

-- Projections
select * from Authors
-- Get name of persons who lives in nepal
select Name from Authors where Address='Nepal'

-- Insert
INSERT INTO Authors
VALUES (NULL, 'Tom B. Erichsen', 'F', 'Norway', 'tom@gmail.com', '1960/12/23');

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
    AuthorDetailId interger,
    FOREIGN KEY(AuthorDetailId) REFERENCES Authors(Id)
);

-- Delete table
drop table AuthorDetails

-- Relations: one to one, one to many, many to many

-- Constraints
ALTER TABLE Authors
ADD FOREIGN KEY (AuthorDetailId) REFERENCES AuthorDetails(Id);
