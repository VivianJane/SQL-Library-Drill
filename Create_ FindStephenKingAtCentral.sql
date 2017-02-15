CREATE PROC [dbo].[FindStephenKingAtCentral]
AS

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


GO