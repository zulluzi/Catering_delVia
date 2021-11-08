--1
SELECT S.StaffName, SP.PositionName AS [StaffPositionName], COUNT(ST.StaffID) + COUNT(P.StaffID) AS [Total Activity] 
	FROM Staff S
	JOIN StaffPosition SP ON SP.StaffPositionID = S.StaffPositionID
	JOIN Purchase P ON P.StaffID = S.StaffID
	JOIN ServicesTransaction ST ON ST.StaffID = S.StaffID
		WHERE S.Salary BETWEEN 1000000 AND 4000000
			GROUP BY S.StaffName, SP.PositionName
				HAVING COUNT(P.StaffID)>2

--2 
SELECT STC.CustomerID, C.CustomerName, SUM(STC.Pax) AS [Pax Bought]
	FROM Customer C
	JOIN ServicesTransaction STC ON STC.CustomerID = C.CustomerID
	JOIN TransactionDetail TD ON TD.TransactionID = STC.TransactionID
		WHERE C.Gender = 'Male' AND DATEPART(month,CAST(TD.TransactionDate AS VARCHAR(10)) ) <= 6
			GROUP BY  STC.CustomerID, C.CustomerName

--3
SELECT I.IngredientName, SUM(P.QuantityIngredient) AS [Ingredient Bought], COUNT(P.PurchaseID) AS [Purchase Count],
P.QuantityIngredient*I.Price AS [Total Expenses] 
	FROM Ingredient I
	JOIN Purchase P ON P.IngredientID = I.IngredientID
		WHERE DATEPART(month,CAST(P.PurchaseDate AS VARCHAR(10)))%2 = 0 AND DATEPART(dw,P.PurchaseDate) BETWEEN 2 AND 5
			GROUP BY I.IngredientName,P.QuantityIngredient*I.Price 
					ORDER BY I.IngredientName

--4
SELECT LEFT(S.StaffName,CHARINDEX(' ', S.StaffName)-1) AS StaffName, COUNT(STC.TransactionID) AS [Transaction Count], 
SUM(STC.Pax) AS [Pax Sold]
	FROM Staff S
	JOIN ServicesTransaction STC ON S.StaffID = STC.StaffID
		WHERE (S.StaffID LIKE ('%1') OR S.StaffID LIKE ('%3') OR S.StaffID LIKE ('%5')  OR S.StaffID LIKE ('%7') OR S.StaffID LIKE ('%9')) 
		AND (STC.CustomerID LIKE ('%0') OR STC.CustomerID LIKE ('%2') OR STC.CustomerID LIKE ('%4') OR STC.CustomerID LIKE ('%6') OR STC.CustomerID LIKE ('%8'))
			GROUP BY S.StaffName

--5
SELECT REPLACE(V.VendorName,'PT. ', '') AS [Vendor Name], I.IngredientName ,'Rp. '+ CAST(I.Price AS CHAR) AS [Ingredient Price] 
	FROM Vendor V
	JOIN Purchase P ON P.VendorID = V.VendorID
	JOIN Ingredient I ON I.IngredientID = P.IngredientID
		WHERE I.Price >= (SELECT AVG(Ingredient.Price) FROM Ingredient) 
			AND I.Stock<250

--6
SELECT C.CustomerName, CONVERT(VARCHAR,TD.TransactionDate,107) AS [TransactionDate], M.MenuName,
M.Price AS [MenuPrice], SUBSTRING(M.[Description], 0, CHARINDEX(',', M.[Description], CHARINDEX(' ', M.[Description], 0)+1)) AS [Brief Description],
STC.Pax, M.Price*STC.Pax AS [Total Price]
	FROM Customer C
	JOIN ServicesTransaction STC ON STC.CustomerID = C.CustomerID
	JOIN TransactionDetail TD ON TD.TransactionID = STC.TransactionID
	JOIN Menu M ON M.MenuID = STC.MenuID
		WHERE M.Price > (SELECT AVG(M.Price) FROM Menu M)
		AND STC.Pax > 100

--7
SELECT UPPER(S.StaffName) AS [StaffName], CONVERT(VARCHAR,P.PurchaseDate,107) AS [Purchase Date],
CAST(SUM(P.QuantityIngredient)AS VARCHAR) + ' pcs' AS [Quantity Bought]
	FROM Staff S
	JOIN Purchase P ON P.StaffID = S.StaffID
	JOIN Ingredient I ON I.IngredientID = P.IngredientID
		WHERE DATEPART(month,CAST(P.PurchaseDate AS VARCHAR(10)))%2 = 0 
		AND I.Price < (SELECT MAX(Price) FROM Ingredient)
			GROUP BY StaffName,PurchaseDate

--8
SELECT C.CustomerID, SUBSTRING(C.Email, 0, CHARINDEX('@', C.Email)) AS [Email], LOWER(M.MenuName) AS [MenuName],
SUM(STC.Pax) AS [Pax Bought]
	FROM Customer C
	JOIN ServicesTransaction STC ON STC.CustomerID = C.CustomerID
	JOIN Menu M ON M.MenuID = STC.MenuID
		WHERE C.Gender = 'Male' AND STC.Pax >= (SELECT AVG(Pax) FROM ServicesTransaction)
			GROUP BY C.CustomerID,C.Email,M.MenuName

--9
CREATE VIEW LoyalCustomerView AS
	SELECT CustomerName, COUNT(STC.CustomerID) AS [Total Transaction], SUM(Pax) AS [Total Pax Purchased], 
	SUM(Pax*Price) AS [Total Price]
			 FROM Customer C
			 JOIN ServicesTransaction STC ON STC.CustomerID = C.CustomerID
			 JOIN Menu M ON M.MenuID = STC.MenuID
				WHERE C.Gender = 'Female' 
					GROUP BY CustomerName
						HAVING COUNT(STC.CustomerID) > 2
SELECT * FROM LoyalCustomerView

--10
CREATE VIEW VendorRecapView AS
	SELECT V.VendorName, COUNT(V.VendorID) AS [Purchase Made], SUM(P.QuantityIngredient) AS [Ingredients Purchase]
			 FROM VENDOR V
			 JOIN Purchase P ON P.VendorID = V.VendorID
			 JOIN Ingredient I ON I.IngredientID = P.IngredientID
				WHERE I.Stock > 150
					GROUP BY V.VendorName
						HAVING COUNT(P.VendorID)>1 
SELECT * FROM VendorRecapView