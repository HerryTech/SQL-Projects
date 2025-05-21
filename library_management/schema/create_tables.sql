CREATE TABLE books(
book_id VARCHAR PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(100), 
genre VARCHAR(50),
publish_year INT
);

CREATE TABLE borrowers(
borrower_id	VARCHAR PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Join_date DATE
);

CREATE TABLE issue_records(
issue_id VARCHAR PRIMARY KEY,
book_id	VARCHAR,
borrower_id	VARCHAR,
issue_date DATE,
return_date DATE
FOREIGN KEY (book_id) REFERENCES books(book_id)

);

