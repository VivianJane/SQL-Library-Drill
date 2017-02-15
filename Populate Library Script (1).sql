USE Master
GO

DROP DATABASE Library
GO
CREATE DATABASE Library
GO

USE Library

DROP TABLE BOOK
GO

CREATE TABLE BOOK
(
BookID INT,
Title VARCHAR(50),
PublisherName VARCHAR(50)
)
GO

INSERT BOOK
	VALUES (1, 'The Lost Tribe', 'Dog House'),
	(2, 'Time and Time Again', 'Dog House'),
	(3, 'Darlin', 'Dog House'),
	(4, 'Kombucha Town', 'Dog House'),
	(5, 'Growlers', 'Dog House'),
	(6, 'Darning Socks', 'Dog House'),
	(7, 'Not A Latte', 'Dog House'),
	(8, 'Keyboard Kneeboard', 'Dog House'),
	(9, 'Sloth Brothers', 'Dog House'),
	(10, 'Space Barred', 'Dog House'),
	(11, 'Chair Flair Where', 'Book Town'),
	(12, 'Who Did it?', 'Book Town'),
	(13, 'Flower Shower', 'Book Town'),
	(14, 'Everything Has Changed', 'Book Town'),
	(15, 'Maxiplans With Minivans', 'Book Town'),
	(16, 'How to Grow Corn', 'Book Town'),
	(17, 'Pepper for Lepers', 'Book Town'),
	(18, 'Confessions of a Part-Time Astrologer', 'Book Town'),
	(19, 'Dream Team Scheme', 'Book Town'),
	(20, 'Bleaker Come Sneaker', 'Book Town')

GO

DROP TABLE BOOK_AUTHORS
GO

CREATE TABLE BOOK_AUTHORS
(BookID INT,
AuthorName varchar (50))

GO


INSERT BOOK_AUTHORS
	VALUES (1, 'Jane West'),
		(2, 'Todd Lankenberg'),
		(3, 'Marcus Genner'),
		(4, 'Kiff Splichter'),
		(5, 'Indra Lohara'),
		(6, 'Soledad Gabriel'),
		(7, 'Geni Hayek'),
		(8, 'Omar duBois'),
		(9, 'Opal Smythe'),
		(10, 'Thuy Nguyen'),
		(11, 'Dern Klepter'),
		(12, 'Cobb Dobbs'),
		(13, 'Abir Sonali'),
		(14, 'Rashad Holmes'),
		(15, 'Dirk Cutlass'),
		(16, 'Stephen King'),
		(17, 'Ma Brooker'),
		(18, 'Doctor Townshend'),
		(19, 'Harmon Bolster'),
		(20, 'Pappy Lhapsa')

GO

DROP TABLE PUBLISHER
GO

CREATE TABLE PUBLISHER
(Name varchar (50),
[Address] varchar (50),
Phone varchar (30))
GO

INSERT PUBLISHER
	VALUES ('Dog House', '1 1st St', '555-555-5555'),
		('Book Town', '2 2nd St', '555-678-3523')

GO

DROP TABLE LIBRARY_BRANCH
GO

CREATE TABLE LIBRARY_BRANCH
(BranchID INT,
BranchName varchar (50),
[Address] varchar (50))


INSERT LIBRARY_BRANCH
	VALUES (101, 'Sharpstown', '23 Birch Ave'),
		(202, 'Central', '44 Fourth Blvd'),
		(303, 'Brookwood', '67 Alison Way'),
		(404, 'Alpha Woods', '452 Toodle St')

GO

DROP TABLE BOOK_COPIES
GO

CREATE TABLE BOOK_COPIES
(BookID INT,
BranchID INT,
No_Of_Copies INT)
GO

INSERT BOOK_COPIES
	VALUES (1, 101, 2),
		(2, 101, 2),
		(3, 101, 2),
		(4, 101, 2),
		(5, 202, 2),
		(6, 202, 2),
		(7, 202, 2),
		(8, 202, 2),
		(9, 303, 2),
		(10, 303, 2),
		(11, 303, 2),
		(12, 303, 2),
		(13, 404, 2),
		(14, 404,2),
		(15, 404, 2),
		(16, 404,2),
		(16, 202, 4),
		(17, 101,5),
		(18, 202, 5),
		(19, 303, 5),
		(20, 404, 5)

GO

DROP TABLE BORROWER
GO

CREATE TABLE BORROWER
(CardNo INT,
Name varchar (50),
[Address] varchar (50),
Phone varchar (30))
GO

INSERT BORROWER
	VALUES 
	 (51, 'Hardy Boy', '10 Parkridge Dr', '453-345-6553'),
	 (52, 'Durple Deebab', '2 Hope Ln', '345-536-6353'),
	 (53, 'Gomer Gruber', '3 Dre Park', '768-735-5784'),
	 (54, 'Steve Silver', '5 Avenue Ave', '345-765-3685'),
	 (55, 'Reb Roper', '4 Peters Ct', '754-546-6576'),
	 (56, 'Harper Hooper', '3 Marks Ln', '345-543-2556'),
	 (57, 'Werner Woder', '67 Loopy St', '644-754-7537'),
	 (58, 'John McDuff', '12 Palisades', '455-234-2345'),
	 (59, 'Barry Lewis', '435 Harrison Rd', '404-254-6463'),
	(60, 'Lola May', '77 Cherry Ln', '564-675-3466'),
	(61, 'Darby Adlib', '568 Gerty Pass', '454-455-6536'),
	(62, 'Parker Tewis', '435 Canned Lews', '435-236-3563')
	(63, 'Gertie Jemmers', '45 Gopala Blvd', '676-456-4564'),
	(64, 'Hooper Freshly', '76886 Forbert Circle', '567-457-7642')


GO

DROP TABLE BOOK_LOANS
GO

CREATE TABLE BOOK_LOANS
(BookID INT,
BranchID INT,
CardNo INT,
DateOut DATE,
DueDate DATE)
GO

INSERT BOOK_LOANS
	VALUES (1, 101, 51, '02/02/2017', '02/23/2017'),
	(2, 101, 51, '02/02/2017', '02/23/2017'),
	(3, 101, 51, '02/02/2017', '02/23/2017'),
	(4, 101, 51, '02/02/2017', '02/23/2017'),
	(17, 101, 51, '02/02/2017', '02/23/2017'),
	(5, 202, 51, '02/02/2017', '02/23/2017'),
	(5, 202, 52, '02/03/2017', '02/24/2017'),
	(6, 202, 52, '02/03/2017', '02/24/2017'),
	(7, 202, 52, '02/03/2017', '02/24/2017'),
	(8, 202, 52, '02/03/2017', '02/24/2017'),
	(18, 202, 52, '02/03/2017', '02/24/2017'),
	(9, 303, 52, '02/03/2017', '02/24/2017'),
	(9, 303, 53, '02/04/2017', '02/25/2017'),
	(10, 303, 53, '02/04/2017', '02/25/2017'),
	(11, 303, 53, '02/04/2017', '02/25/2017'),
	(12, 303, 53, '02/04/2017', '02/25/2017'),
	(13, 404, 54, '02/05/2017', '02/26/2017'),
	(14, 404, 54, '02/05/2017', '02/26/2017'),
	(15, 404, 54, '02/05/2017', '02/26/2017'),
	(16, 404, 54, '02/05/2017', '02/26/2017'),
	(17, 101, 54, '02/05/2017', '02/26/2017'),
	(1, 101, 55, '02/06/2017', '02/27/2017'),
	(2, 101, 55, '02/06/2017', '02/27/2017'),
	(3, 101, 55, '02/06/2017', '02/27/2017'),
	(4, 101, 56, '02/06/2017', '02/27/2017'),
	(6, 202, 56, '02/06/2017', '02/27/2017'),
	(7, 202, 56, '02/06/2017', '02/27/2017'),
	(8, 202, 56, '02/06/2017', '02/27/2017'),
	(10, 303, 57, '02/07/2017', '02/28/2017'),
	(11, 303, 57, '02/07/2017', '02/28/2017'),
	(12, 303, 57, '02/07/2017', '02/28/2017'),
	(13, 404, 58, '02/08/2017', '03/01/2017'),
	(14, 404, 58, '02/08/2017', '03/01/2017'),
	(15, 404, 58, '02/08/2017', '03/01/2017'),
	(16, 404, 58, '02/08/2017', '03/01/2017'),
	(17, 101, 58, '02/08/2017', '03/01/2017'),
	(18, 202, 58, '02/10/2017', '03/02/2017'),
	(19, 303, 58, '02/10/2017', '03/02/2017'),
	(20, 404, 58, '02/10/2017', '03/02/2017'),
	(17, 101, 59, '02/10/2017', '03/02/2017'),
	(18, 202, 59,'02/10/2017', '03/02/2017'),
	(19, 303, 59, '02/10/2017', '03/02/2017'),
	(20, 404, 59, '02/10/2017', '03/02/2017'),
	(17, 101, 60, '02/10/2017', '03/02/2017'),
	(18, 202, 60, '02/10/2017', '03/02/2017'),
	(19, 303, 60, '02/10/2017', '03/02/2017'),
	(20, 404, 60, '02/10/2017', '03/02/2017'),
	(18, 202, 61, '02/10/2017', '03/02/2017'),
	(19, 303, 61, '02/10/2017', '03/02/2017'),
	(20, 404, 61, '02/10/2017', '03/02/2017'),
	(19, 303, 62, '02/11/2017', '03/03/2017'),
	(20, 404, 62, '02/11/2017', '03/03/2017')

GO