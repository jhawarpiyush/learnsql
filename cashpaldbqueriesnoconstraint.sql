/*
CREATE TABLE users (id INTEGER, name TEXT, age INTEGER, is_admin BOOLEAN);
INSERT INTO users (id, name, age, is_admin) VALUES (1, 'Lane Holland', 27, false);
INSERT INTO users (id, name, age, is_admin) VALUES (2, 'Allan Rae', 18, true);
INSERT INTO users (id, name, age, is_admin) VALUES (3, 'Sally Wagoner', 18, true);

SELECT id, name, is_admin FROM users;

CREATE TABLE users (id INTEGER, name TEXT, age INTEGER);
INSERT into users (id, name, age) values (1, 'John Doe', 21);
INSERT into users (id, name, age) values (2, '1', 33);
SELECT * FROM users;

CREATE TABLE users (id INTEGER, name TEXT, age INTEGER, balance INTEGER, is_admin BOOLEAN);
INSERT INTO users (id, name, age, balance, is_admin) VALUES (1, 'Branston Bryan', 28, 450.00, true);
INSERT INTO users (id, name, age, balance, is_admin) VALUES (2, 'Skyler Black', 27, 200.00, true);
INSERT INTO users (id, name, age, balance, is_admin) VALUES (3, 'Taylor Johnson', 33, 496.24, false);
INSERT INTO users (id, name, age, balance, is_admin) VALUES (4, 'Sydney Thompson', 33, 496.24, false);
SELECT name FROM users;
*/


CREATE TABLE users (id INTEGER, name TEXT, age INTEGER, balance INTEGER, is_admin BOOLEAN);
INSERT INTO users (id, name, age, balance, is_admin) VALUES (1, 'John Smith', 28, 450.00, 1);
INSERT INTO users (id, name, age, balance, is_admin) VALUES (2, 'Darren Walker', 27, 200.00, true);
INSERT INTO users (id, name, age, balance, is_admin) VALUES (3, 'Jane Morris', 33, 496.24, 0);

SELECT * FROM users;
SELECT name, balance FROM users;

CREATE TABLE people (
    id INTEGER,
    tag TEXT,
    name TEXT,
    age INTEGER,
    balance INTEGER,
    is_admin BOOLEAN
);

CREATE TABLE transactions (
    id INTEGER,
    recipient_id  INTEGER,
    sender_id  INTEGER,
    note  TEXT,
    amount  INTEGER
);

CREATE TABLE people (
    id INTEGER,
    tag TEXT,
    name TEXT,
    age INTEGER,
    balance INTEGER,
    is_admin BOOLEAN
);

ALTER TABLE people RENAME TO peopleusers;
ALTER TABLE peopleusers RENAME COLUMN tag TO username;
ALTER TABLE peopleusers ADD COLUMN password TEXT;

ALTER TABLE transactions ADD COLUMN was_successful BOOLEAN;
ALTER TABLE transactions ADD COLUMN transaction_type TEXT;

CREATE TABLE posts (
id INTEGER,
image_url TEXT,
description TEXT,
author_id INTEGER,
is_sponsored BOOLEAN
);

ALTER TABLE posts RENAME COLUMN author_id TO poster_id;
ALTER TABLE posts ADD COLUMN is_edited BOOLEAN;
ALTER TABLE posts DROP COLUMN is_sponsored;

INSERT INTO transactions (id, recipient_id, sender_id, note, amount)
VALUES (1, 14, 26, 'Testing transaction!', 10.50);

INSERT INTO transactions (id, sender_id)
VALUES (2, 4);

INSERT INTO transactions (recipient_id, note, amount)
VALUES (5, 'Oil change, full synthetic', 140.22);

SELECT * FROM transactions;
