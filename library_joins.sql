
-- Use the library database
USE librarydb;

-- ------------------------------
-- INNER JOIN
-- ------------------------------
-- Show all borrowings with member name and book title
SELECT br.borrowid, m.membername, b.title
FROM borrowings br
INNER JOIN members m ON br.memberid = m.memberid
INNER JOIN books b ON br.bookid = b.bookid;

-- ------------------------------
-- LEFT JOIN
-- ------------------------------
-- List all members and their borrowings (including members with no borrowings)
SELECT m.membername, br.borrowid, b.title
FROM members m
LEFT JOIN borrowings br ON m.memberid = br.memberid
LEFT JOIN books b ON br.bookid = b.bookid;

-- ------------------------------
-- RIGHT JOIN
-- ------------------------------
-- List all books and who borrowed them (including books never borrowed)
SELECT b.title, m.membername, br.borrowdate
FROM books b
RIGHT JOIN borrowings br ON b.bookid = br.bookid
RIGHT JOIN members m ON br.memberid = m.memberid;

-- ------------------------------
-- FULL JOIN
-- ------------------------------
-- Show all members and books with their borrowings, whether matched or not
SELECT m.membername, b.title, br.borrowdate
FROM members m
FULL JOIN borrowings br ON m.memberid = br.memberid
FULL JOIN books b ON br.bookid = b.bookid;
