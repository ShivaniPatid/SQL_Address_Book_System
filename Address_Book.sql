-------UC 1 : create a Address Book Service DB-------

CREATE DATABASE Address_Book_Service;

SHOW DATABASES;

USE Address_Book_Service; 

--------UC 2 : create a Address Book Table-------

CREATE TABLE Address_Book
(
	FirstName varchar(255),
	LastName varchar(255),
	Address varchar(255),
	City varchar(255),
	State varchar(255),
	Zip varchar(255),
	PhoneNumber varchar(255),
	Email varchar(255)
);

---------UC 3 : insert new Contacts to Address------------

INSERT INTO Address_Book(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES	('Anjali','Sharma','Street 11','Indore','Madhya Pradesh','456251','8596452536','anjali@gmail.com'),
		('Rahul','Chouhan','Street 12','Ujjain','Madhya Pradesh','456601','8856964525','rahul@gmail.com'),
		('Pooja','Vyas','Street 13','Pune','Maharastra','425601','6261058545','pooja@gmail.com'),
		('Anisha','Mehta','Street 14','Mumbai','Maharastra','456661','7845962645','anisha@gmail.com'),
		('Ravi','Rana','Street 15','Pune','Maharastra','425601','6298568845','ravi@gmail.com'),
		('Vikas','Patni','Street 16','Pune','Maharastra','425601','6298568845','vikas@gmail.com');

--------UC 4 : edit existing contact person using their name-----------------

UPDATE Address_Book
SET City = 'Mumbai', Zip = '456661' WHERE FirstName = 'Ravi';


--------UC 5 : delete a person using person's name------------

DELETE Address_Book
WHERE FirstName = 'Vikas';

--------UC 6 : Retrieve Person belonging to a City or State from the Address Book----------

SELECT * FROM Address_Book 
WHERE City = 'Mumbai' AND State = 'Maharastra';


----------UC 7 : understand the size of address book by City and State---------

SELECT COUNT(City) FROM Address_Book;

SELECT COUNT(State) FROM Address_Book;

---------UC 8 : retrieve entries sorted alphabetically by Person’s name for a given city-----------

SELECT * FROM Address_Book
ORDER BY City, FirstName;

