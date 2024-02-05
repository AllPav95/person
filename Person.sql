CREATE DATABASE pavlova_db;

USE pavlova_db;

CREATE TABLE Person(
    [id] INT PRIMARY KEY IDENTITY,
    [name] NVARCHAR(52) NOT NULL,
    [inn] NVARCHAR(20) NOT NULL,
	
	 
);
CREATE TABLE PersonID(
    [id] INT PRIMARY KEY IDENTITY,
    [humanId] INT,
    [name] NVARCHAR(52) NOT NULL,
    [inn] NVARCHAR(20) NOT NULL,
    FOREIGN KEY ([humanId]) REFERENCES Person([id])
);
--DROP TABLE Person;
--DROP TABLE PersonID;

INSERT INTO Person ([name], [inn])
VALUES ('Zhenya', '25555555555555'),
       ('Oleg', '55222222222225'),
       ('Æåíÿ', '88888888888888');

INSERT INTO PersonID([humanId],[name],[inn]) 
VALUES (1, 'Zhenya', '25555555555555'),
       (2, 'Oleg', '55222222222225'),
       (3, 'Æåíÿ', '88888888888888');

SELECT * FROM [dbo].Person;
SELECT * FROM [dbo].PersonID;