--List all books with their details
SELECT * FROM books;

--Count of books by genre
SELECT genre, COUNT(genre) AS books_genre 
FROM books
GROUP BY genre;

--Books published before a certain year
SELECT title, author, publish_year
FROM books
WHERE publish_year < 2000;

--Top 5 most issued books
SELECT b.title, COUNT(ir.issue_id) AS issue_count
FROM issue_records ir
JOIN books b ON b.book_id = ir.book_id
GROUP BY b.title
ORDER BY issue_count DESC
LIMIT 5;