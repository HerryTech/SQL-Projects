--List all books with their details
SELECT * FROM books;

--Count of books by genre
SELECT COUNT(genre) AS books_genre FROM books
GROUPBY genre;