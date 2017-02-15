---Drill Query #1---

SELECT No_Of_Copies
FROM BOOK_COPIES
WHERE BranchID = 101
AND BookID = 1

---Drill Query #2---
SELECT BranchID, No_of_Copies
FROM BOOK_COPIES
Where BookID = 1

---Drill Query #3---

SELECT bo.Name
FROM BORROWER AS bo
LEFT OUTER JOIN BOOK_LOANS as lo
ON bo.CardNo = lo.CardNo
WHERE lo.CardNo IS NULL

---Drill Query #4---

SELECT b.Title, bo.Name, bo.[Address]
FROM BOOK as b
INNER JOIN BOOK_LOANS AS lo
ON b.BookID = lo.BookID
INNER JOIN BORROWER as bo
ON lo.CardNo = bo.CardNo
WHERE lo.BranchID = 101
AND DueDate = GETDATE()

---Drill Query #5---***

SELECT br.BranchName,
COUNT(br.BranchID)
AS Total_loans
FROM BOOK_LOANS as lo
INNER JOIN LIBRARY_BRANCH as br
ON lo.BranchID = br.BranchID
GROUP BY br.BranchName


---Drill Query #6---***

SELECT bo.Name, bo.[Address],
COUNT (lo.CardNo)
AS NOL
FROM BORROWER AS bo
INNER JOIN BOOK_LOANS as lo
ON bo.CardNo = lo.CardNo
GROUP BY bo.Name, bo.[address]
HAVING COUNT (lo.CardNo) > 5



SELECT * FROM BOOK_LOANS


---Drill Query #7---
SELECT bk.Title, co.No_Of_Copies
FROM BOOK as bk
INNER JOIN BOOK_AUTHORS as bo
ON bk.BookID = bo.BookID
INNER JOIN BOOK_COPIES as co
ON bo.BookID = co.BookID
INNER JOIN LIBRARY_BRANCH as br
ON co.BranchID = br.BranchID
WHERE bo.AuthorName = 'Stephen King'
AND co.BranchID = 202