CREATE TABLE friends (
id INTEGER,
name TEXT,
birthday DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Jane Doe', 'May 30th, 1990');

SELECT * FROM friends;

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Harry Potter', 'August 24th, 2978');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Ron Wesley', 'December 12th, 1995');

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'jane@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'harrypotter@yahoo.com'
WHERE id = 2;

UPDATE friends
SET email = 'ron.wesley@gmail.com'
WHERE id = 3;

DELETE FROM friends
WHERE name = 'Jane Smith';

SELECT * FROM friends;
