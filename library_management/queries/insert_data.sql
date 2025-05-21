--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-21 14:30:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4855 (class 0 OID 16592)
-- Dependencies: 217
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.books VALUES ('B001', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960);
INSERT INTO public.books VALUES ('B002', '1984', 'George Orwell', 'Dystopian', 1949);
INSERT INTO public.books VALUES ('B003', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925);
INSERT INTO public.books VALUES ('B004', 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951);
INSERT INTO public.books VALUES ('B005', 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813);
INSERT INTO public.books VALUES ('B006', 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937);
INSERT INTO public.books VALUES ('B007', 'Fahrenheit 451', 'Ray Bradbury', 'Science Fiction', 1953);
INSERT INTO public.books VALUES ('B008', 'The Book Thief', 'Markus Zusak', 'Historical Fiction', 2005);
INSERT INTO public.books VALUES ('B009', 'The Chronicles of Narnia: The Lion, the Witch and the Wardrobe', 'C.S. Lewis', 'Fantasy', 1950);
INSERT INTO public.books VALUES ('B010', 'Moby-Dick', 'Herman Melville', 'Adventure', 1851);
INSERT INTO public.books VALUES ('B011', 'Jane Eyre', 'Charlotte Brontë', 'Gothic Fiction', 1847);
INSERT INTO public.books VALUES ('B012', 'The Alchemist', 'Paulo Coelho', 'Philosophy', 1988);
INSERT INTO public.books VALUES ('B013', 'The Da Vinci Code', 'Dan Brown', 'Thriller', 2003);
INSERT INTO public.books VALUES ('B014', 'War and Peace', 'Leo Tolstoy', 'Historical Fiction', 1869);
INSERT INTO public.books VALUES ('B015', 'Anna Karenina', 'Leo Tolstoy', 'Tragedy', 1877);
INSERT INTO public.books VALUES ('B016', 'The Divine Comedy', 'Dante Alighieri', 'Epic Poetry', 1320);
INSERT INTO public.books VALUES ('B017', 'The Kite Runner', 'Khaled Hosseini', 'Historical Fiction', 2003);
INSERT INTO public.books VALUES ('B018', 'A Tale of Two Cities', 'Charles Dickens', 'Historical Fiction', 1859);
INSERT INTO public.books VALUES ('B019', 'Slaughterhouse-Five', 'Kurt Vonnegut', 'Science Fiction', 1969);
INSERT INTO public.books VALUES ('B020', 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Magical Realism', 1967);
INSERT INTO public.books VALUES ('B021', 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic Fiction', 1890);
INSERT INTO public.books VALUES ('B022', 'Dracula', 'Bram Stoker', 'Horror', 1897);
INSERT INTO public.books VALUES ('B023', 'The Shining', 'Stephen King', 'Horror', 1977);
INSERT INTO public.books VALUES ('B024', 'Wuthering Heights', 'Emily Brontë', 'Gothic Fiction', 1847);
INSERT INTO public.books VALUES ('B025', 'The Handmaid''s Tale', 'Margaret Atwood', 'Dystopian', 1985);
INSERT INTO public.books VALUES ('B026', 'The Outsiders', 'S.E. Hinton', 'Young Adult', 1967);
INSERT INTO public.books VALUES ('B027', 'Animal Farm', 'George Orwell', 'Political Satire', 1945);
INSERT INTO public.books VALUES ('B028', 'The Giver', 'Lois Lowry', 'Dystopian', 1993);
INSERT INTO public.books VALUES ('B029', 'Catch-22', 'Joseph Heller', 'Satire', 1961);
INSERT INTO public.books VALUES ('B030', 'The Color Purple', 'Alice Walker', 'Historical Fiction', 1982);
INSERT INTO public.books VALUES ('B031', 'Les Misérables', 'Victor Hugo', 'Historical Fiction', 1862);
INSERT INTO public.books VALUES ('B032', 'Ender’s Game', 'Orson Scott Card', 'Science Fiction', 1985);
INSERT INTO public.books VALUES ('B033', 'The Bell Jar', 'Sylvia Plath', 'Semi-autobiographical', 1963);
INSERT INTO public.books VALUES ('B034', 'Lord of the Flies', 'William Golding', 'Allegorical', 1954);
INSERT INTO public.books VALUES ('B035', 'The Secret Garden', 'Frances Hodgson Burnett', 'Children’s Lit', 1911);
INSERT INTO public.books VALUES ('B036', 'The Count of Monte Cristo', 'Alexandre Dumas', 'Adventure', 1844);
INSERT INTO public.books VALUES ('B037', 'Frankenstein', 'Mary Shelley', 'Gothic Fiction', 1818);
INSERT INTO public.books VALUES ('B038', 'The Little Prince', 'Antoine de Saint-Exupéry', 'Children’s Lit', 1943);
INSERT INTO public.books VALUES ('B039', 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'Philosophical', 1880);
INSERT INTO public.books VALUES ('B040', 'The Road', 'Cormac McCarthy', 'Post-apocalyptic', 2006);
INSERT INTO public.books VALUES ('B041', 'The Night Circus', 'Erin Morgenstern', 'Fantasy', 2011);
INSERT INTO public.books VALUES ('B042', 'The Hunger Games', 'Suzanne Collins', 'Dystopian', 2008);
INSERT INTO public.books VALUES ('B043', 'The Help', 'Kathryn Stockett', 'Historical Fiction', 2009);
INSERT INTO public.books VALUES ('B044', 'Gone Girl', 'Gillian Flynn', 'Thriller', 2012);
INSERT INTO public.books VALUES ('B045', 'The Fault in Our Stars', 'John Green', 'Young Adult', 2012);
INSERT INTO public.books VALUES ('B046', 'American Gods', 'Neil Gaiman', 'Fantasy', 2001);
INSERT INTO public.books VALUES ('B047', 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Mystery', 2005);
INSERT INTO public.books VALUES ('B048', 'Life of Pi', 'Yann Martel', 'Adventure', 2001);
INSERT INTO public.books VALUES ('B049', 'Twilight', 'Stephenie Meyer', 'Fantasy', 2005);
INSERT INTO public.books VALUES ('B050', 'Divergent', 'Veronica Roth', 'Dystopian', 2011);
INSERT INTO public.books VALUES ('B051', 'The Maze Runner', 'James Dashner', 'Science Fiction', 2009);
INSERT INTO public.books VALUES ('B052', 'The Martian', 'Andy Weir', 'Science Fiction', 2011);
INSERT INTO public.books VALUES ('B053', 'Ready Player One', 'Ernest Cline', 'Science Fiction', 2011);
INSERT INTO public.books VALUES ('B054', 'Never Let Me Go', 'Kazuo Ishiguro', 'Science Fiction', 2005);
INSERT INTO public.books VALUES ('B055', 'The Lovely Bones', 'Alice Sebold', 'Thriller', 2002);
INSERT INTO public.books VALUES ('B056', 'Cloud Atlas', 'David Mitchell', 'Science Fiction', 2004);
INSERT INTO public.books VALUES ('B057', 'The Road to Character', 'David Brooks', 'Non-fiction', 2015);
INSERT INTO public.books VALUES ('B058', 'Room', 'Emma Donoghue', 'Thriller', 2010);
INSERT INTO public.books VALUES ('B059', 'The Time Traveler’s Wife', 'Audrey Niffenegger', 'Romance', 2003);
INSERT INTO public.books VALUES ('B060', 'Station Eleven', 'Emily St. John Mandel', 'Post-apocalyptic', 2014);
INSERT INTO public.books VALUES ('B061', 'The Goldfinch', 'Donna Tartt', 'Literary Fiction', 2013);
INSERT INTO public.books VALUES ('B062', 'Big Little Lies', 'Liane Moriarty', 'Mystery', 2014);
INSERT INTO public.books VALUES ('B063', 'Me Before You', 'Jojo Moyes', 'Romance', 2012);
INSERT INTO public.books VALUES ('B064', 'The Nightingale', 'Kristin Hannah', 'Historical Fiction', 2015);
INSERT INTO public.books VALUES ('B065', 'An Ember in the Ashes', 'Sabaa Tahir', 'Fantasy', 2015);
INSERT INTO public.books VALUES ('B066', 'The Girl on the Train', 'Paula Hawkins', 'Thriller', 2015);
INSERT INTO public.books VALUES ('B067', 'Circe', 'Madeline Miller', 'Fantasy', 2018);
INSERT INTO public.books VALUES ('B068', 'Where the Crawdads Sing', 'Delia Owens', 'Mystery', 2018);
INSERT INTO public.books VALUES ('B069', 'The Secret History', 'Donna Tartt', 'Thriller', 1992);
INSERT INTO public.books VALUES ('B070', 'Snow Falling on Cedars', 'David Guterson', 'Historical Fiction', 1994);
INSERT INTO public.books VALUES ('B071', 'The Green Mile', 'Stephen King', 'Fantasy/Drama', 1996);
INSERT INTO public.books VALUES ('B072', 'Memoirs of a Geisha', 'Arthur Golden', 'Historical Fiction', 1997);
INSERT INTO public.books VALUES ('B073', 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 1997);
INSERT INTO public.books VALUES ('B074', 'The Perks of Being a Wallflower', 'Stephen Chbosky', 'Young Adult', 1999);
INSERT INTO public.books VALUES ('B075', 'The Poisonwood Bible', 'Barbara Kingsolver', 'Historical Fiction', 1998);
INSERT INTO public.books VALUES ('B076', 'White Teeth', 'Zadie Smith', 'Literary Fiction', 2000);
INSERT INTO public.books VALUES ('B077', 'The Corrections', 'Jonathan Franzen', 'Literary Fiction', 2001);
INSERT INTO public.books VALUES ('B078', 'Middlesex', 'Jeffrey Eugenides', 'Literary Fiction', 2002);
INSERT INTO public.books VALUES ('B079', 'Atonement', 'Ian McEwan', 'Historical Fiction', 2001);
INSERT INTO public.books VALUES ('B080', 'The Blind Assassin', 'Margaret Atwood', 'Literary Fiction', 2000);
INSERT INTO public.books VALUES ('B081', 'Shantaram', 'Gregory David Roberts', 'Thriller', 2003);
INSERT INTO public.books VALUES ('B082', 'The Shadow of the Wind', 'Carlos Ruiz Zafón', 'Mystery', 2001);
INSERT INTO public.books VALUES ('B083', 'The Hours', 'Michael Cunningham', 'Literary Fiction', 1998);
INSERT INTO public.books VALUES ('B084', 'Fight Club', 'Chuck Palahniuk', 'Fiction', 1996);
INSERT INTO public.books VALUES ('B085', 'Jurassic Park', 'Michael Crichton', 'Science Fiction', 1990);
INSERT INTO public.books VALUES ('B086', 'Angela’s Ashes', 'Frank McCourt', 'Memoir', 1996);
INSERT INTO public.books VALUES ('B087', 'Coraline', 'Neil Gaiman', 'Fantasy', 2002);
INSERT INTO public.books VALUES ('B088', 'The Tipping Point', 'Malcolm Gladwell', 'Non-fiction', 2000);
INSERT INTO public.books VALUES ('B089', 'The Wind-Up Bird Chronicle', 'Haruki Murakami', 'Magical Realism', 1994);
INSERT INTO public.books VALUES ('B090', 'The Secret Life of Bees', 'Sue Monk Kidd', 'Historical Fiction', 2001);
INSERT INTO public.books VALUES ('B091', 'A Game of Thrones', 'George R. R. Martin', 'Fantasy', 1996);
INSERT INTO public.books VALUES ('B092', 'Perfume: The Story of a Murderer', 'Patrick Süskind', 'Historical Fiction', 1985);
INSERT INTO public.books VALUES ('B093', 'The God of Small Things', 'Arundhati Roy', 'Literary Fiction', 1997);
INSERT INTO public.books VALUES ('B094', 'Possession', 'A.S. Byatt', 'Literary Fiction', 1990);
INSERT INTO public.books VALUES ('B095', 'Cryptonomicon', 'Neal Stephenson', 'Science Fiction', 1999);
INSERT INTO public.books VALUES ('B096', 'Blood Meridian', 'Cormac McCarthy', 'Western Fiction', 1985);
INSERT INTO public.books VALUES ('B097', 'The Amazing Adventures of Kavalier & Clay', 'Michael Chabon', 'Historical Fiction', 2000);
INSERT INTO public.books VALUES ('B098', 'Snow Crash', 'Neal Stephenson', 'Science Fiction', 1992);
INSERT INTO public.books VALUES ('B099', 'Neverwhere', 'Neil Gaiman', 'Urban Fantasy', 1996);
INSERT INTO public.books VALUES ('B100', 'The Name of the Rose', 'Umberto Eco', 'Historical Mystery', 1980);


--
-- TOC entry 4856 (class 0 OID 16599)
-- Dependencies: 218
-- Data for Name: borrowers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.borrowers VALUES ('C001', 'Alice Johnson', 'alice.johnson@gmail.com', '2022-01-15');
INSERT INTO public.borrowers VALUES ('C002', 'Bob Smith', 'bob.smith@gmail.com', '2021-11-30');
INSERT INTO public.borrowers VALUES ('C003', 'Carol Martinez', 'carol.martinez@gmail.com', '2023-02-10');
INSERT INTO public.borrowers VALUES ('C004', 'David Lee', 'david.lee@gmail.com', '2022-07-22');
INSERT INTO public.borrowers VALUES ('C005', 'Emily Davis', 'emily.davis@gmail.com', '2021-09-05');
INSERT INTO public.borrowers VALUES ('C006', 'Frank Wilson', 'frank.wilson@gmail.com', '2020-12-17');
INSERT INTO public.borrowers VALUES ('C007', 'Grace Chen', 'grace.chen@gmail.com', '2023-03-01');
INSERT INTO public.borrowers VALUES ('C008', 'Henry Brown', 'henry.brown@gmail.com', '2022-10-10');
INSERT INTO public.borrowers VALUES ('C009', 'Isabella Garcia', 'isabella.garcia@gmail.com', '2023-01-20');
INSERT INTO public.borrowers VALUES ('C010', 'Jack Miller', 'jack.miller@gmail.com', '2021-06-30');
INSERT INTO public.borrowers VALUES ('C011', 'Karen Thompson', 'karen.thompson@gmail.com', '2021-08-11');
INSERT INTO public.borrowers VALUES ('C012', 'Liam White', 'liam.white@gmail.com', '2022-05-23');
INSERT INTO public.borrowers VALUES ('C013', 'Mia Anderson', 'mia.anderson@gmail.com', '2023-04-05');
INSERT INTO public.borrowers VALUES ('C014', 'Noah Harris', 'noah.harris@gmail.com', '2022-11-14');
INSERT INTO public.borrowers VALUES ('C015', 'Olivia Martinez', 'olivia.martinez@gmail.com', '2021-12-01');
INSERT INTO public.borrowers VALUES ('C016', 'Paul Robinson', 'paul.robinson@gmail.com', '2020-08-30');
INSERT INTO public.borrowers VALUES ('C017', 'Quinn Walker', 'quinn.walker@gmail.com', '2023-01-12');
INSERT INTO public.borrowers VALUES ('C018', 'Rachel Young', 'rachel.young@gmail.com', '2022-03-19');
INSERT INTO public.borrowers VALUES ('C019', 'Samuel King', 'samuel.king@gmail.com', '2021-07-27');
INSERT INTO public.borrowers VALUES ('C020', 'Tina Scott', 'tina.scott@gmail.com', '2022-09-08');
INSERT INTO public.borrowers VALUES ('C021', 'Ursula Green', 'ursula.green@gmail.com', '2023-02-24');
INSERT INTO public.borrowers VALUES ('C022', 'Victor Adams', 'victor.adams@gmail.com', '2021-10-20');
INSERT INTO public.borrowers VALUES ('C023', 'Wendy Baker', 'wendy.baker@gmail.com', '2022-06-15');
INSERT INTO public.borrowers VALUES ('C024', 'Xavier Carter', 'xavier.carter@gmail.com', '2020-11-05');
INSERT INTO public.borrowers VALUES ('C025', 'Yvonne Diaz', 'yvonne.diaz@gmail.com', '2023-03-10');
INSERT INTO public.borrowers VALUES ('C026', 'Zachary Evans', 'zachary.evans@gmail.com', '2021-05-02');
INSERT INTO public.borrowers VALUES ('C027', 'Abigail Flores', 'abigail.flores@gmail.com', '2022-07-29');
INSERT INTO public.borrowers VALUES ('C028', 'Brandon Garcia', 'brandon.garcia@gmail.com', '2023-01-07');
INSERT INTO public.borrowers VALUES ('C029', 'Chloe Hernandez', 'chloe.hernandez@gmail.com', '2022-08-20');
INSERT INTO public.borrowers VALUES ('C030', 'Daniel Jackson', 'daniel.jackson@gmail.com', '2021-04-17');
INSERT INTO public.borrowers VALUES ('C031', 'Ella Kelly', 'ella.kelly@gmail.com', '2022-12-03');
INSERT INTO public.borrowers VALUES ('C032', 'Felix Lopez', 'felix.lopez@gmail.com', '2023-02-15');
INSERT INTO public.borrowers VALUES ('C033', 'Gabriella Moore', 'gabriella.moore@gmail.com', '2021-11-09');
INSERT INTO public.borrowers VALUES ('C034', 'Harry Nelson', 'harry.nelson@gmail.com', '2020-10-28');
INSERT INTO public.borrowers VALUES ('C035', 'Isla Ortiz', 'isla.ortiz@gmail.com', '2022-03-04');
INSERT INTO public.borrowers VALUES ('C036', 'Jacob Perez', 'jacob.perez@gmail.com', '2023-04-18');
INSERT INTO public.borrowers VALUES ('C037', 'Kayla Quinn', 'kayla.quinn@gmail.com', '2021-09-25');
INSERT INTO public.borrowers VALUES ('C038', 'Leo Rivera', 'leo.rivera@gmail.com', '2022-06-09');
INSERT INTO public.borrowers VALUES ('C039', 'Maya Sanchez', 'maya.sanchez@gmail.com', '2023-01-30');
INSERT INTO public.borrowers VALUES ('C040', 'Nathan Turner', 'nathan.turner@gmail.com', '2021-07-06');
INSERT INTO public.borrowers VALUES ('C041', 'Olivia Vaughn', 'olivia.vaughn@gmail.com', '2022-05-12');
INSERT INTO public.borrowers VALUES ('C042', 'Peter Walker', 'peter.walker@gmail.com', '2023-03-22');
INSERT INTO public.borrowers VALUES ('C043', 'Quinn Xu', 'quinn.xu@gmail.com', '2021-10-13');
INSERT INTO public.borrowers VALUES ('C044', 'Riley Young', 'riley.young@gmail.com', '2022-09-29');
INSERT INTO public.borrowers VALUES ('C045', 'Sophia Zimmerman', 'sophia.zimmerman@gmail.com', '2023-04-08');
INSERT INTO public.borrowers VALUES ('C046', 'Thomas Allen', 'thomas.allen@gmail.com', '2020-12-01');
INSERT INTO public.borrowers VALUES ('C047', 'Uma Barnes', 'uma.barnes@gmail.com', '2022-02-20');
INSERT INTO public.borrowers VALUES ('C048', 'Victor Clark', 'victor.clark@gmail.com', '2023-01-05');
INSERT INTO public.borrowers VALUES ('C049', 'Willow Davis', 'willow.davis@gmail.com', '2021-08-19');
INSERT INTO public.borrowers VALUES ('C050', 'Xavier Evans', 'xavier.evans@gmail.com', '2022-11-27');
INSERT INTO public.borrowers VALUES ('C051', 'Abigail Foster', 'abigail.foster@gmail.com', '2023-02-12');
INSERT INTO public.borrowers VALUES ('C052', 'Benjamin Gray', 'benjamin.gray@gmail.com', '2022-04-18');
INSERT INTO public.borrowers VALUES ('C053', 'Chloe Howard', 'chloe.howard@gmail.com', '2021-10-08');
INSERT INTO public.borrowers VALUES ('C054', 'Dylan James', 'dylan.james@gmail.com', '2023-01-21');
INSERT INTO public.borrowers VALUES ('C055', 'Emma King', 'emma.king@gmail.com', '2022-08-11');
INSERT INTO public.borrowers VALUES ('C056', 'Felix Lewis', 'felix.lewis@gmail.com', '2021-11-30');
INSERT INTO public.borrowers VALUES ('C057', 'Grace Martinez', 'grace.martinez@gmail.com', '2022-03-27');
INSERT INTO public.borrowers VALUES ('C058', 'Henry Nelson', 'henry.nelson@gmail.com', '2023-04-04');
INSERT INTO public.borrowers VALUES ('C059', 'Isabella Owens', 'isabella.owens@gmail.com', '2022-06-16');
INSERT INTO public.borrowers VALUES ('C060', 'Jack Peterson', 'jack.peterson@gmail.com', '2021-07-22');
INSERT INTO public.borrowers VALUES ('C061', 'Kayla Roberts', 'kayla.roberts@gmail.com', '2022-01-30');
INSERT INTO public.borrowers VALUES ('C062', 'Liam Scott', 'liam.scott@gmail.com', '2023-03-08');
INSERT INTO public.borrowers VALUES ('C063', 'Mia Turner', 'mia.turner@gmail.com', '2021-09-15');
INSERT INTO public.borrowers VALUES ('C064', 'Noah Underwood', 'noah.underwood@gmail.com', '2022-11-01');
INSERT INTO public.borrowers VALUES ('C065', 'Olivia Vaughn', 'olivia.vaughn2@gmail.com', '2023-02-09');
INSERT INTO public.borrowers VALUES ('C066', 'Paul Wilson', 'paul.wilson@gmail.com', '2021-08-04');
INSERT INTO public.borrowers VALUES ('C067', 'Quinn Xu', 'quinn.xu2@gmail.com', '2022-05-17');
INSERT INTO public.borrowers VALUES ('C068', 'Rachel Young', 'rachel.young2@gmail.com', '2023-01-11');
INSERT INTO public.borrowers VALUES ('C069', 'Samuel Zimmerman', 'samuel.zimmerman@gmail.com', '2022-07-28');
INSERT INTO public.borrowers VALUES ('C070', 'Tina Anderson', 'tina.anderson@gmail.com', '2021-12-14');
INSERT INTO public.borrowers VALUES ('C071', 'Ursula Brown', 'ursula.brown@gmail.com', '2023-03-05');
INSERT INTO public.borrowers VALUES ('C072', 'Victor Carter', 'victor.carter@gmail.com', '2022-09-21');
INSERT INTO public.borrowers VALUES ('C073', 'Wendy Diaz', 'wendy.diaz@gmail.com', '2021-06-03');
INSERT INTO public.borrowers VALUES ('C074', 'Xavier Evans', 'xavier.evans2@gmail.com', '2023-04-14');
INSERT INTO public.borrowers VALUES ('C075', 'Yvonne Flores', 'yvonne.flores@gmail.com', '2022-08-08');
INSERT INTO public.borrowers VALUES ('C076', 'Zachary Garcia', 'zachary.garcia@gmail.com', '2021-05-28');
INSERT INTO public.borrowers VALUES ('C077', 'Abigail Harris', 'abigail.harris@gmail.com', '2023-01-27');
INSERT INTO public.borrowers VALUES ('C078', 'Brandon Jackson', 'brandon.jackson@gmail.com', '2022-06-04');
INSERT INTO public.borrowers VALUES ('C079', 'Chloe Kelly', 'chloe.kelly@gmail.com', '2023-03-29');
INSERT INTO public.borrowers VALUES ('C080', 'Daniel Lopez', 'daniel.lopez@gmail.com', '2021-11-13');
INSERT INTO public.borrowers VALUES ('C081', 'Ella Moore', 'ella.moore@gmail.com', '2022-04-06');
INSERT INTO public.borrowers VALUES ('C082', 'Felix Nelson', 'felix.nelson@gmail.com', '2023-02-19');
INSERT INTO public.borrowers VALUES ('C083', 'Gabriella Owens', 'gabriella.owens@gmail.com', '2021-08-23');
INSERT INTO public.borrowers VALUES ('C084', 'Harry Peterson', 'harry.peterson@gmail.com', '2022-12-09');
INSERT INTO public.borrowers VALUES ('C085', 'Isla Roberts', 'isla.roberts@gmail.com', '2023-04-01');
INSERT INTO public.borrowers VALUES ('C086', 'Jacob Scott', 'jacob.scott@gmail.com', '2022-03-15');
INSERT INTO public.borrowers VALUES ('C087', 'Kayla Turner', 'kayla.turner@gmail.com', '2021-07-31');
INSERT INTO public.borrowers VALUES ('C088', 'Leo Underwood', 'leo.underwood@gmail.com', '2022-10-07');
INSERT INTO public.borrowers VALUES ('C089', 'Maya Vaughn', 'maya.vaughn@gmail.com', '2023-01-16');
INSERT INTO public.borrowers VALUES ('C090', 'Nathan Wilson', 'nathan.wilson@gmail.com', '2022-05-05');
INSERT INTO public.borrowers VALUES ('C091', 'Olivia Xu', 'olivia.xu@gmail.com', '2023-02-28');
INSERT INTO public.borrowers VALUES ('C092', 'Peter Young', 'peter.young@gmail.com', '2021-06-21');
INSERT INTO public.borrowers VALUES ('C093', 'Quinn Zimmerman', 'quinn.zimmerman@gmail.com', '2022-08-17');
INSERT INTO public.borrowers VALUES ('C094', 'Riley Anderson', 'riley.anderson@gmail.com', '2023-04-10');
INSERT INTO public.borrowers VALUES ('C095', 'Sophia Brown', 'sophia.brown@gmail.com', '2021-11-26');
INSERT INTO public.borrowers VALUES ('C096', 'Thomas Carter', 'thomas.carter@gmail.com', '2022-01-19');
INSERT INTO public.borrowers VALUES ('C097', 'Uma Diaz', 'uma.diaz@gmail.com', '2023-03-14');
INSERT INTO public.borrowers VALUES ('C098', 'Victor Evans', 'victor.evans3@gmail.com', '2021-09-12');
INSERT INTO public.borrowers VALUES ('C099', 'Willow Flores', 'willow.flores@gmail.com', '2022-07-03');
INSERT INTO public.borrowers VALUES ('C100', 'Xavier Garcia', 'xavier.garcia@gmail.com', '2023-02-06');


--
-- TOC entry 4857 (class 0 OID 16606)
-- Dependencies: 219
-- Data for Name: issue_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.issue_records VALUES ('I001', 'B015', 'C095', '2023-05-17', '2023-07-01');
INSERT INTO public.issue_records VALUES ('I002', 'B004', 'C034', '2023-10-26', '2023-12-14');
INSERT INTO public.issue_records VALUES ('I003', 'B029', 'C046', '2021-10-06', '2021-11-25');
INSERT INTO public.issue_records VALUES ('I004', 'B095', 'C022', '2024-11-16', '2024-12-20');
INSERT INTO public.issue_records VALUES ('I005', 'B098', 'C096', '2024-01-13', '2024-02-10');
INSERT INTO public.issue_records VALUES ('I006', 'B030', 'C050', '2024-06-14', '2024-07-16');
INSERT INTO public.issue_records VALUES ('I007', 'B017', 'C080', '2022-12-01', '2023-01-15');
INSERT INTO public.issue_records VALUES ('I008', 'B073', 'C076', '2023-04-11', '2023-05-22');
INSERT INTO public.issue_records VALUES ('I009', 'B089', 'C003', '2022-09-06', '2022-10-10');
INSERT INTO public.issue_records VALUES ('I010', 'B008', 'C069', '2023-03-24', '2023-04-28');
INSERT INTO public.issue_records VALUES ('I011', 'B028', 'C027', '2023-07-19', '2023-08-23');
INSERT INTO public.issue_records VALUES ('I012', 'B024', 'C077', '2023-10-15', '2023-11-20');
INSERT INTO public.issue_records VALUES ('I013', 'B038', 'C083', '2024-10-06', '2024-11-10');
INSERT INTO public.issue_records VALUES ('I014', 'B040', 'C043', '2023-01-27', '2023-02-27');
INSERT INTO public.issue_records VALUES ('I015', 'B003', 'C036', '2023-08-09', '2023-09-13');
INSERT INTO public.issue_records VALUES ('I016', 'B066', 'C019', '2024-04-02', '2024-05-06');
INSERT INTO public.issue_records VALUES ('I017', 'B071', 'C058', '2023-12-21', '2024-01-25');
INSERT INTO public.issue_records VALUES ('I018', 'B070', 'C081', '2023-05-10', '2023-06-14');
INSERT INTO public.issue_records VALUES ('I019', 'B016', 'C011', '2022-03-19', '2022-04-23');
INSERT INTO public.issue_records VALUES ('I020', 'B045', 'C064', '2024-05-05', '2024-06-09');
INSERT INTO public.issue_records VALUES ('I021', 'B014', 'C002', '2024-02-22', '2024-03-28');
INSERT INTO public.issue_records VALUES ('I022', 'B068', 'C091', '2023-06-03', '2023-07-08');
INSERT INTO public.issue_records VALUES ('I023', 'B078', 'C065', '2022-11-25', '2022-12-30');
INSERT INTO public.issue_records VALUES ('I024', 'B087', 'C040', '2024-06-28', '2024-08-02');
INSERT INTO public.issue_records VALUES ('I025', 'B046', 'C023', '2022-08-14', '2022-09-18');
INSERT INTO public.issue_records VALUES ('I026', 'B094', 'C048', '2023-09-20', '2023-10-25');
INSERT INTO public.issue_records VALUES ('I027', 'B057', 'C020', '2022-01-15', '2022-02-19');
INSERT INTO public.issue_records VALUES ('I028', 'B079', 'C037', '2023-03-13', '2023-04-17');
INSERT INTO public.issue_records VALUES ('I029', 'B053', 'C060', '2024-08-04', '2024-09-08');
INSERT INTO public.issue_records VALUES ('I030', 'B072', 'C063', '2023-10-02', '2023-11-06');
INSERT INTO public.issue_records VALUES ('I031', 'B067', 'C001', '2024-01-04', '2024-02-08');
INSERT INTO public.issue_records VALUES ('I032', 'B063', 'C006', '2022-07-09', '2022-08-13');
INSERT INTO public.issue_records VALUES ('I033', 'B058', 'C024', '2023-11-11', '2023-12-16');
INSERT INTO public.issue_records VALUES ('I034', 'B021', 'C089', '2024-03-18', '2024-04-22');
INSERT INTO public.issue_records VALUES ('I035', 'B059', 'C055', '2024-06-05', '2024-07-10');
INSERT INTO public.issue_records VALUES ('I036', 'B099', 'C070', '2023-12-07', '2024-01-11');
INSERT INTO public.issue_records VALUES ('I037', 'B075', 'C010', '2023-01-31', '2023-03-07');
INSERT INTO public.issue_records VALUES ('I038', 'B043', 'C052', '2022-06-01', '2022-07-06');
INSERT INTO public.issue_records VALUES ('I039', 'B096', 'C074', '2024-05-14', '2024-06-18');
INSERT INTO public.issue_records VALUES ('I040', 'B011', 'C053', '2023-08-30', '2023-10-04');
INSERT INTO public.issue_records VALUES ('I041', 'B045', 'C085', '2022-02-18', '2022-03-25');
INSERT INTO public.issue_records VALUES ('I042', 'B019', 'C035', '2023-05-27', '2023-07-01');
INSERT INTO public.issue_records VALUES ('I043', 'B036', 'C077', '2024-04-01', '2024-05-06');
INSERT INTO public.issue_records VALUES ('I044', 'B016', 'C046', '2022-09-29', '2022-11-03');
INSERT INTO public.issue_records VALUES ('I045', 'B020', 'C007', '2023-11-04', '2023-12-09');
INSERT INTO public.issue_records VALUES ('I046', 'B098', 'C093', '2024-06-10', '2024-07-15');
INSERT INTO public.issue_records VALUES ('I047', 'B033', 'C042', '2022-05-03', '2022-06-07');
INSERT INTO public.issue_records VALUES ('I048', 'B044', 'C049', '2023-08-17', '2023-09-21');
INSERT INTO public.issue_records VALUES ('I049', 'B034', 'C067', '2024-03-10', '2024-04-14');
INSERT INTO public.issue_records VALUES ('I050', 'B080', 'C061', '2022-10-11', '2022-11-15');
INSERT INTO public.issue_records VALUES ('I051', 'B017', 'C066', '2023-07-21', '2023-08-25');
INSERT INTO public.issue_records VALUES ('I052', 'B085', 'C082', '2024-01-26', '2024-03-01');
INSERT INTO public.issue_records VALUES ('I053', 'B026', 'C032', '2022-04-16', '2022-05-21');
INSERT INTO public.issue_records VALUES ('I054', 'B035', 'C088', '2023-09-08', '2023-10-13');
INSERT INTO public.issue_records VALUES ('I055', 'B081', 'C030', '2022-11-27', '2023-01-01');
INSERT INTO public.issue_records VALUES ('I056', 'B089', 'C056', '2023-02-12', '2023-03-19');
INSERT INTO public.issue_records VALUES ('I057', 'B012', 'C009', '2024-05-29', '2024-07-03');
INSERT INTO public.issue_records VALUES ('I058', 'B050', 'C083', '2022-03-05', '2022-04-09');
INSERT INTO public.issue_records VALUES ('I059', 'B073', 'C075', '2023-06-18', '2023-07-23');
INSERT INTO public.issue_records VALUES ('I060', 'B090', 'C043', '2024-07-07', '2024-08-11');
INSERT INTO public.issue_records VALUES ('I061', 'B039', 'C014', '2022-01-24', '2022-02-28');
INSERT INTO public.issue_records VALUES ('I062', 'B087', 'C016', '2023-08-30', '2023-10-04');
INSERT INTO public.issue_records VALUES ('I063', 'B011', 'C099', '2024-04-12', '2024-05-17');
INSERT INTO public.issue_records VALUES ('I064', 'B037', 'C010', '2022-06-19', '2022-07-24');
INSERT INTO public.issue_records VALUES ('I065', 'B054', 'C087', '2023-10-26', '2023-11-30');
INSERT INTO public.issue_records VALUES ('I066', 'B064', 'C051', '2024-02-07', '2024-03-13');
INSERT INTO public.issue_records VALUES ('I067', 'B031', 'C038', '2022-12-15', '2023-01-19');
INSERT INTO public.issue_records VALUES ('I068', 'B010', 'C002', '2023-03-03', '2023-04-07');
INSERT INTO public.issue_records VALUES ('I069', 'B062', 'C050', '2024-06-24', '2024-07-29');
INSERT INTO public.issue_records VALUES ('I070', 'B060', 'C060', '2022-07-06', '2022-08-10');
INSERT INTO public.issue_records VALUES ('I071', 'B041', 'C079', '2023-05-01', '2023-06-05');
INSERT INTO public.issue_records VALUES ('I072', 'B014', 'C065', '2024-01-11', '2024-02-15');
INSERT INTO public.issue_records VALUES ('I073', 'B065', 'C068', '2022-03-27', '2022-05-01');
INSERT INTO public.issue_records VALUES ('I074', 'B022', 'C073', '2023-09-15', '2023-10-20');
INSERT INTO public.issue_records VALUES ('I075', 'B030', 'C084', '2024-03-03', '2024-04-07');
INSERT INTO public.issue_records VALUES ('I076', 'B058', 'C005', '2022-08-14', '2022-09-18');
INSERT INTO public.issue_records VALUES ('I077', 'B063', 'C004', '2023-11-10', '2023-12-15');
INSERT INTO public.issue_records VALUES ('I078', 'B070', 'C036', '2024-05-18', '2024-06-22');
INSERT INTO public.issue_records VALUES ('I079', 'B027', 'C078', '2022-02-08', '2022-03-15');
INSERT INTO public.issue_records VALUES ('I080', 'B066', 'C018', '2023-06-23', '2023-07-28');
INSERT INTO public.issue_records VALUES ('I081', 'B025', 'C024', '2022-09-03', '2022-10-08');
INSERT INTO public.issue_records VALUES ('I082', 'B050', 'C011', '2023-12-19', '2024-01-23');
INSERT INTO public.issue_records VALUES ('I083', 'B059', 'C021', '2024-06-04', '2024-07-09');
INSERT INTO public.issue_records VALUES ('I084', 'B017', 'C070', '2022-04-26', '2022-05-31');
INSERT INTO public.issue_records VALUES ('I085', 'B001', 'C066', '2023-10-07', '2023-11-11');
INSERT INTO public.issue_records VALUES ('I086', 'B067', 'C022', '2024-01-22', '2024-02-26');
INSERT INTO public.issue_records VALUES ('I087', 'B043', 'C076', '2022-06-10', '2022-07-15');
INSERT INTO public.issue_records VALUES ('I088', 'B033', 'C013', '2023-03-12', '2023-04-16');
INSERT INTO public.issue_records VALUES ('I089', 'B012', 'C032', '2024-04-29', '2024-06-03');
INSERT INTO public.issue_records VALUES ('I090', 'B018', 'C019', '2022-11-01', '2022-12-06');
INSERT INTO public.issue_records VALUES ('I091', 'B048', 'C067', '2023-08-08', '2023-09-12');
INSERT INTO public.issue_records VALUES ('I092', 'B061', 'C074', '2024-03-25', '2024-04-29');
INSERT INTO public.issue_records VALUES ('I093', 'B044', 'C075', '2022-05-18', '2022-06-22');
INSERT INTO public.issue_records VALUES ('I094', 'B007', 'C027', '2023-07-01', '2023-08-05');
INSERT INTO public.issue_records VALUES ('I095', 'B023', 'C029', '2024-02-01', '2024-03-07');
INSERT INTO public.issue_records VALUES ('I096', 'B055', 'C055', '2022-08-25', '2022-09-29');
INSERT INTO public.issue_records VALUES ('I097', 'B028', 'C028', '2023-09-30', '2023-11-04');
INSERT INTO public.issue_records VALUES ('I098', 'B013', 'C058', '2024-05-13', '2024-06-17');
INSERT INTO public.issue_records VALUES ('I099', 'B053', 'C069', '2022-03-01', '2022-04-05');
INSERT INTO public.issue_records VALUES ('I100', 'B049', 'C071', '2023-06-08', '2023-07-13');


-- Completed on 2025-05-21 14:30:38

--
-- PostgreSQL database dump complete
--

