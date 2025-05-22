--List all books with their details
SELECT * FROM books;

--Count of books by genre
SELECT genre, COUNT(genre) AS books_genre 
FROM books
GROUP BY genre;