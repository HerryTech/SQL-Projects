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