CREATE DATABASE Catering_delVia
USE Catering_delVia     

--STAFF
CREATE TABLE StaffPosition(
	StaffPositionID CHAR(5) PRIMARY KEY CHECK (StaffPositionID LIKE 'SP[0-9][0-9][0-9]'),
	PositionName VARCHAR(20)
)

CREATE TABLE Staff(
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(255) CHECK (LEN(StaffName) > 5),
	StaffPositionID CHAR(5) CHECK (StaffPositionID LIKE 'SP[0-9][0-9][0-9]'),
	Gender VARCHAR(10),
	[Email] VARCHAR(255) CHECK ([Email] NOT LIKE '@%' 
		AND ([Email] LIKE '%@gmail.com' OR [Email] LIKE '%@yahoo.com' 
			OR [Email] LIKE '%@yahoo.co.id')),
	PhoneNumber CHAR(12) CHECK (PhoneNumber LIKE '[0][8][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	[Address] VARCHAR(255),
	Salary INT CHECK (Salary BETWEEN 500000 and 5000000)
	FOREIGN KEY (StaffPositionID) REFERENCES StaffPosition (StaffPositionID)
)

CREATE TABLE Vendor(
	VendorID CHAR(5) PRIMARY KEY CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]'),
	VendorName VARCHAR(255) CHECK (LEN(VendorName) > 5 AND VendorName LIKE 'PT. %'),
	PhoneNumber CHAR(12) CHECK (PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	[Address] VARCHAR(255)
)

CREATE TABLE Ingredient(
	IngredientID CHAR(5) CHECK (IngredientID LIKE 'ID[0-9][0-9][0-9]'),
	IngredientName VARCHAR(255) CHECK (LEN(IngredientName) > 5),
	Stock INT,
	Price INT
	PRIMARY KEY (IngredientID)
)

CREATE TABLE Purchase(
	PurchaseID CHAR(5) PRIMARY KEY CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
	StaffID CHAR(5) CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	VendorID CHAR(5) CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]'),
	PurchaseDate DATE,
	IngredientID CHAR(5) CHECK (IngredientID LIKE 'ID[0-9][0-9][0-9]'),
	QuantityIngredient INT
	FOREIGN KEY (StaffID) REFERENCES Staff (StaffID),
	FOREIGN KEY (VendorID) REFERENCES Vendor (VendorID),
	FOREIGN KEY (IngredientID) REFERENCES Ingredient (IngredientID)
)

--CUSTOMER
CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(255) CHECK (LEN(CustomerName) > 5),
	PhoneNumber CHAR(12) CHECK (PhoneNumber LIKE '[0][8][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	[Address] VARCHAR(255),
	Gender VARCHAR(10),
	[Email] VARCHAR(255) CHECK ([Email] NOT LIKE '@%' 
		AND ([Email] LIKE '%@gmail.com' OR [Email] LIKE '%@yahoo.com' 
			OR [Email] LIKE '%@yahoo.co.id')),
)

CREATE TABLE Menu(
	MenuID CHAR(5) PRIMARY KEY CHECK (MenuID LIKE 'ME[0-9][0-9][0-9]'),
	MenuName VARCHAR (255) CHECK (LEN(MenuName) > 5),
	[Description] VARCHAR(255),
	Price INT
)

CREATE TABLE TransactionDetail(
	TransactionID CHAR(5) PRIMARY KEY CHECK (TransactionID LIKE 'TR[0-9][0-9][0-9]'),
	TransactionDate DATE,
	ReservationType VARCHAR(255),
	ReservationDate DATE,
	ReservationAddress VARCHAR(255)
)


CREATE TABLE ServicesTransaction(
    TransactionID CHAR(5) CHECK (TransactionID LIKE 'TR[0-9][0-9][0-9]'),
	StaffID CHAR(5) CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	CustomerID CHAR(5) CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	MenuID CHAR(5) CHECK (MenuID LIKE 'ME[0-9][0-9][0-9]'),
	Pax INT
	FOREIGN KEY (StaffID) REFERENCES Staff (StaffID),
	FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
	FOREIGN KEY (MenuID) REFERENCES Menu (MenuID),
	FOREIGN KEY (TransactionID) REFERENCES TransactionDetail (TransactionID)
)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      