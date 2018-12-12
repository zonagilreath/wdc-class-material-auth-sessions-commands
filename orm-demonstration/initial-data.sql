-- sqlite3 library.db < initial-data.sql

-- Countries
INSERT INTO country (id, name) VALUES (1, 'United States');
INSERT INTO country (id, name) VALUES (2, 'England');
INSERT INTO country (id, name) VALUES (3, 'Argentina');
INSERT INTO country (id, name) VALUES (4, 'Scotland');

-- Authors
INSERT INTO author (id, country_id, name) VALUES (1, 1, 'Edgar Allan Poe');
INSERT INTO author (id, country_id, name) VALUES (2, 1, 'Mark Twain');
INSERT INTO author (id, country_id, name) VALUES (3, 2, 'Jane Austen');
INSERT INTO author (id, country_id, name) VALUES (4, 4, 'Arthur Conan Doyle');
INSERT INTO author (id, country_id, name) VALUES (5, 3, 'Jorge Luis Borges');

-- Books
INSERT INTO book (id, author_id, title, isbn) VALUES (1, 3, 'Pride & Prejudice', 'B1');
INSERT INTO book (id, author_id, title, isbn) VALUES (2, 4, 'A Study in Scarlet', 'B2');
INSERT INTO book (id, author_id, title, isbn) VALUES (3, 3, 'Emma', 'B3');
