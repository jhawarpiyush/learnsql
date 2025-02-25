/*
CREATE TABLE users (
id INTEGER PRIMARY KEY,
name TEXT NOT NULL,
age INTEGER NOT NULL,
country_code TEXT NOT NULL,
username TEXT UNIQUE NOT NULL,
password TEXT NOT NULL,
is_admin BOOLEAN
);


INSERT INTO users (id,name,age,country_code,username,password,is_admin) VALUES (1,'Rudolf',33,'US','rudolf1234','thisisnotsecure',false);

INSERT INTO users (id,name,age,country_code,username,password,is_admin) VALUES (2,'Jerry',25,'US','jerrysmith','mypasswordis1234',true);

SELECT * FROM users;

DROP TABLE users;
*/

CREATE TABLE countries(
code TEXT PRIMARY KEY, 
name TEXT NOT NULL
);

INSERT INTO countries (code,name) VALUES ('US','United States of America');

INSERT INTO countries (code,name) VALUES ('IN','India');

INSERT INTO countries (code,name) VALUES ('BR','Brazil');

INSERT INTO countries (code,name) VALUES ('CA','Canada');


CREATE TABLE users (
id INTEGER PRIMARY KEY,
name TEXT NOT NULL,
age INTEGER NOT NULL,
country_code TEXT NOT NULL,
username TEXT UNIQUE NOT NULL,
password TEXT NOT NULL,
is_admin BOOLEAN NOT NULL,
CONSTRAINT fk_country_code
FOREIGN KEY (country_code)
REFERENCES countries(code)
);

INSERT INTO users (id,name,age,country_code,username,password,is_admin) VALUES (1,'Jerry',33,'US','jerry1234','thisisnotsecure',false);

INSERT INTO users (id,name,age,country_code,username,password,is_admin) VALUES (2,'Amit',25,'IN','amitsmith','mypasswordis1234',true);

SELECT * FROM users;


CREATE TABLE transactions (
id INTEGER PRIMARY KEY,
sender_id INTEGER,
recipient_id INTEGER,
MEMO TEXT NOT NULL,
amount INTEGER NOT NULL,
balance INTEGER NOT NULL
);

CREATE TABLE banking_institutions (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT NOT NULL,
    routing_number INTEGER NOT NULL
);

/*
CREATE TABLE banks (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT NOT NULL,
    routing_number INTEGER NOT NULL
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    is_admin BOOLEAN,
    bank_id INTEGER,
    CONSTRAINT fk_banks
    FOREIGN KEY (bank_id)
    REFERENCES banks(id)
);

CREATE TABLE crud (c TEXT, r TEXT, u TEXT, d TEXT);
INSERT INTO crud (c, r, u, d)
VALUES ('CREATE = CREATE', 'READ = SELECT', 'UPDATE = UPDATE', 'DELETE = DELETE');

SELECT * FROM crud;
*/

INSERT INTO users (id,name,age,country_code,username,password,is_admin) VALUES (3,'David',34,'US','DavidDev','insertPractice',false);

INSERT INTO users (id,name,age,country_code,username,password,is_admin) VALUES (4,'Samantha',29,'BR','Sammy93','addingRecords!',false);

INSERT INTO users(name, age, country_code, username, password, is_admin) VALUES ('John', 39, 'CA', 'Jjdev21', 'welovebootdev', false);

INSERT INTO users(name, age, country_code, username, password, is_admin) VALUES ('Ram', 42, 'IN', 'Ram11c', 'thisSQLcourserocks', false);

INSERT INTO users(name, age, country_code, username, password, is_admin) VALUES ('Hunter', 30, 'US', 'Hdev92', 'backendDev', false);

INSERT INTO users(name, age, country_code, username, password, is_admin) VALUES ('Allan', 27, 'US', 'Alires', 'iLoveB00tdev', true);

INSERT INTO users (name,age,country_code,username,password,is_admin) VALUES ('Lance',20,'US','LanChr','bootdevisbest',false);

INSERT INTO users (name,age,country_code,username,password,is_admin) VALUES ('Tiffany',28,'US','Tifferoon','autoincrement',true);
INSERT INTO users(name, age, country_code, username, password, is_admin) VALUES ('Lane', 27, 'US', 'wagslane', 'update_me', false);

SELECT COUNT(*) FROM users;
SELECT username FROM users WHERE is_admin == true;

/*
CREATE TABLE transactionsold (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    recipient_id INTEGER,
    sender_id INTEGER,
    amount INTEGER
);

INSERT INTO transactionsold(user_id, recipient_id, sender_id, amount)
    VALUES (1, 2, NULL, -10);
INSERT INTO transactionsold(user_id, recipient_id, sender_id, amount)
    VALUES (1, NULL, 2, 25);
INSERT INTO transactionsold(user_id, recipient_id, sender_id, amount)
    VALUES (1, 5, NULL, -20);
INSERT INTO transactionsold(user_id, recipient_id, sender_id, amount)
    VALUES (1, NULL, 3, 10);
	
SELECT * FROM transactionsold WHERE sender_id IS NOT NULL;

CREATE TABLE transactionsgrandma (
  id INTEGER PRIMARY KEY, 
  user_id INTEGER NOT NULL, 
  recipient_id INTEGER, 
  sender_id INTEGER, 
  note TEXT, 
  amount INTEGER,
  was_successful BOOLEAN
);

INSERT INTO transactionsgrandma (user_id, sender_id, note, amount, was_successful)
VALUES (2, 10, 'Happy Birthday! Gramma loves you!', 20.00, true);

INSERT INTO transactionsgrandma (user_id, sender_id, note, amount, was_successful)
VALUES (2, 10, 'Happy Birthday from Gramma!', 20.00, true);

INSERT INTO transactionsgrandma (user_id,sender_id, note, amount, was_successful)
VALUES (2, 2, 'Car problems', 256.21, true);
SELECT amount, note AS birthday_message FROM transactionsgrandma WHERE sender_id == 10;

CREATE TABLE transactionsfunc (
  id INTEGER, 
  recipient_id INTEGER, 
  sender_id INTEGER, 
  note TEXT, 
  amount INTEGER,
  was_successful BOOLEAN
);

INSERT INTO transactionsfunc (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (1, 9, 4, 'Testing transaction!', 10.50, true);

INSERT INTO transactionsfunc (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (2, 5, 10, 'Thanks for lunch!', 9.56, true);

INSERT INTO transactionsfunc (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (3, 6, 2, 'Car problems', 256.21, true);

INSERT INTO transactionsfunc (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (4, 7, 8, 'Happy birthday!!', 50, true);

INSERT INTO transactionsfunc (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (5, 9, 11, 'MTG Draft', 50, false);

SELECT id, recipient_id, sender_id, note, amount, was_successful,
    IIF(was_successful == true, 'No action required', 'Perform an audit') AS audit
    FROM transactionsfunc;

SELECT *,
    IIF(was_successful == true, 'No action required', 'Perform an audit') AS audit
    FROM transactionsfunc;
	
*/

/*
CREATE TABLE transactionsorderbylimit (
  id INTEGER PRIMARY KEY, 
  recipient_id INTEGER, 
  sender_id INTEGER, 
  note TEXT, 
  amount INTEGER,
  was_successful BOOLEAN
);

INSERT INTO transactionsorderbylimit (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (1, 9, 4, 'Testing transaction!', 10.50, true);

INSERT INTO transactionsorderbylimit (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (2, 5, 10, 'Thanks for lunch!', 9.56, true);

INSERT INTO transactionsorderbylimit (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (3, 6, 2, 'Car problems', 256.21, true);

INSERT INTO transactionsorderbylimit (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (4, 7, 8, 'Happy birthday!!', 50, true);

INSERT INTO transactionsorderbylimit (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (5, 9, 11, 'MTG Draft', 50, false);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (6, 4, 'lunch with the friends', 12.56, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (6, 12, 'paying ya back for lunch', 12.22, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (9, 6, 'lunch break', 24.89, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (1, 23, 'thanks for lunch yesterday', 10.00, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (7, 14, '5 buck pizza for lunch', 5.00, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (8, 2, 'lunch was goooood thanks, man!', 47.42, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (23, 4, 'lunch meetup, lets get together again soon.', 16.91, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (6, 14, 'not sure how much lunch was, heres 20', 20.00, true);

INSERT INTO transactionsorderbylimit (recipient_id, sender_id, note, amount, was_successful)
VALUES (2, 13, 'Happy birthday, sis! Lets get lunch soon.', 100.00, true);

SELECT * FROM transactionsorderbylimit
WHERE amount BETWEEN 10 AND 80
ORDER BY amount DESC LIMIT 4;

DROP TABLE users;
DROP TABLE countries;

*/

SELECT 5 + 10 as sum;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  is_admin BOOLEAN NOT NULL
);

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  country_code TEXT NOT NULL,
  name TEXT NOT NULL,
  user_id INTEGER NOT NULL,
  CONSTRAINT fk_users
  FOREIGN KEY (user_id)
  REFERENCES users(id)
);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('David', 34, 'david.lang', 'secure1234', false);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('Sam', 12, 'sam-show', 'nasjds134', false);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('Lane', 19, 'wagslane', '2jk3bAkm', false);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('Allan', 27, 'allan.jules', '243nldn', false);

INSERT INTO countries(country_code, name, user_id)
VALUES ('US', 'United States', 1);

INSERT INTO countries(country_code, name, user_id)
VALUES ('CA', 'Canada', 1);

INSERT INTO countries(country_code, name, user_id)
VALUES ('IN', 'India', 2);

INSERT INTO countries(country_code, name, user_id)
VALUES ('JP', 'Japan', 3);

INSERT INTO countries(country_code, name, user_id)
VALUES ('BR', 'Brazil', 4);

SELECT * FROM countries
WHERE user_id IN (
    SELECT id FROM users);
	
DROP TABLE users;
DROP TABLE countries;
DROP TABLE users_countries;
	
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  is_admin BOOLEAN
);

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  country_code TEXT,
  name TEXT
);

CREATE TABLE users_countries (
  country_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  UNIQUE(country_id, user_id)
);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('David', 34, 'david.lang', 'secure1234', false);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('Sam', 12, 'sam-show', 'nasjds134', false);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('Lane', 19, 'wagslane', '2jk3bAkm', false);

INSERT INTO users(name, age, username, password, is_admin)
VALUES ('Allan', 27, 'allan.jules', '243nldn', false);

INSERT INTO countries(country_code, name)
VALUES ('US', 'United States');

INSERT INTO countries(country_code, name)
VALUES ('CA', 'Canada');

INSERT INTO countries(country_code, name)
VALUES ('IN', 'India');

INSERT INTO countries(country_code, name)
VALUES ('JP', 'Japan');

INSERT INTO countries(country_code, name)
VALUES ('BR', 'Brazil');

INSERT INTO users_countries(country_id, user_id)
VALUES (1, 1);

INSERT INTO users_countries(country_id, user_id)
VALUES (1, 2);

INSERT INTO users_countries(country_id, user_id)
VALUES (2, 2);

INSERT INTO users_countries(country_id, user_id)
VALUES (2, 3);

INSERT INTO users_countries(country_id, user_id)
VALUES (3, 3);

INSERT INTO users_countries(country_id, user_id)
VALUES (4, 3);

SELECT * FROM countries
WHERE id IN (
    SELECT country_id FROM users_countries
);

CREATE TABLE companies (
id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  num_employees INTEGER NOT NULL
);


PRAGMA TABLE_INFO('companies');


CREATE TABLE usersnew (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL
);

CREATE TABLE companiesnew (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  num_employees INTEGER NOT NULL,
  company_revenue INTEGER NOT NULL
);

CREATE TABLE usersnew_companiesnew (
  user_id INTEGER,
  company_id INTEGER,
  UNIQUE(user_id, company_id)
);


PRAGMA TABLE_INFO('companiesnew');

DROP TABLE users;
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  bank_id INTEGER,
  bank_name TEXT,
  bank_routing_number INTEGER,
  is_admin BOOLEAN
);

INSERT INTO users(name, age, username, password, is_admin, bank_id, bank_name, bank_routing_number)
VALUES ('David', 34, 'david.lang', 'secure1234', false, 1, 'Central Savings', 123456789);

INSERT INTO users(name, age, username, password, is_admin, bank_id, bank_name, bank_routing_number)
VALUES ('Sam', 12, 'sam-show', 'nasjds134', false, 2, 'Bank of Boots', 987654321);

INSERT INTO users(name, age, username, password, is_admin, bank_id, bank_name, bank_routing_number)
VALUES ('Lane', 19, 'wagslane', '2jk3bAkm', false, 3, 'Metro Trust Bank', 456789123);

INSERT INTO users(name, age, username, password, is_admin, bank_id, bank_name, bank_routing_number)
VALUES ('Allan', 27, 'allan.jules', '243nldn', false, 2, 'Bank of Boots', 987654321);


CREATE TABLE banks (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  routing_number INTEGER NOT NULL
);

INSERT INTO banks(id, name, routing_number)
VALUES (1, 'Central Savings', 123456789);

INSERT INTO banks(id, name, routing_number)
VALUES (2, 'Bank of Boots', 987654321);

INSERT INTO banks(id, name, routing_number)
VALUES (3, 'Metro Trust Bank', 456789123);

CREATE TABLE users_banks (
  user_id  INTEGER NOT NULL,
  bank_id  INTEGER NOT NULL,
  UNIQUE(user_id, bank_id)
);

INSERT INTO users_banks(user_id, bank_id)
VALUES (1, 1);

INSERT INTO users_banks(user_id, bank_id)
VALUES (1, 2);

INSERT INTO users_banks(user_id, bank_id)
VALUES (2, 2);

INSERT INTO users_banks(user_id, bank_id)
VALUES (2, 3);

INSERT INTO users_banks(user_id, bank_id)
VALUES (3, 3);

INSERT INTO users_banks(user_id, bank_id)
VALUES (4, 3);

SELECT * FROM banks
WHERE id IN (
    SELECT bank_id FROM users_banks
)

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (1, 'David', 34, 'US', 'DavidDev', 'insertPractice', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (2, 'Samantha', 29, 'BR', 'Sammy93', 'addingRecords!', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (3, 'John', 39, 'CA', 'Jjdev21', 'welovebootdev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (4, 'Ram', 42, 'IN', 'Ram11c', 'thisSQLcourserocks', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (5, 'Hunter', 30, 'US', 'Hdev92', 'backendDev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (6, 'Allan', 27, 'US', 'Alires', 'iLoveB00tdev', true);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Lance', 20, 'US', 'LanChr', 'b00tdevisbest', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Tiffany', 28, 'US', 'Tifferoon', 'autoincrement', true);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Lane', 27, 'US', 'wagslane', 'update_me', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Darren', 15, 'CA', 'Dshan', 'found_me', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Albert', 55, 'BR', 'BertDev', 'one_al_name', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Alvin', 27, 'US', 'AlvinA27', 'easter_egg', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Al', 39, 'JP', 'quickCoder', 'snake_case', false);

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  country_code TEXT,
  name TEXT
);

INSERT INTO countries(country_code, name)
VALUES ('US', 'United States');

INSERT INTO countries(country_code, name)
VALUES ('CA', 'Canada');

INSERT INTO countries(country_code, name)
VALUES ('IN', 'India');

INSERT INTO countries(country_code, name)
VALUES ('JP', 'Japan');

INSERT INTO countries(country_code, name)
VALUES ('BR', 'Brazil');

CREATE TABLE transactions (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  recipient_id INTEGER,
  sender_id INTEGER,
  note TEXT,
  amount INTEGER,
  was_successful BOOLEAN
);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (9, 4, 'Testing transaction!', 10.50, true);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (5, 10, 'Thanks for lunch!', 9.56, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (6, 2, 'Car problems', 256.21, false);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (7, 8, 'Happy birthday!!', 50, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (9, 11, 'MTG Draft', 50, false);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (6, 4, 'lunch with the friends', 12.56, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (6, 12, 'paying ya back for lunch', 12.22, false);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (9, 6, 'lunch break', 24.89, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (1, 23, 'thanks for lunch yesterday', 10.00, true);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (6, 14, '5 buck pizza for lunch', 5.00, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (8, 2, 'lunch was goooood thanks, man!', 47.42, true);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (23, 4, 'lunch meetup, lets get together again soon.', 16.91, false);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (6, 14, 'not sure how much lunch was, heres 20', 20.00, true);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (2, 13, 'Happy birthday, sis! Lets get lunch soon.', 100.00, true);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (1, 'David', 34, 'US', 'DavidDev', 'insertPractice', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (2, 'Samantha', 29, 'BR', 'Sammy93', 'addingRecords!', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (3, 'John', 39, 'CA', 'Jjdev21', 'welovebootdev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (4, 'Ram', 42, 'IN', 'Ram11c', 'thisSQLcourserocks', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (5, 'Hunter', 30, 'US', 'Hdev92', 'backendDev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (6, 'Allan', 27, 'US', 'Alires', 'iLoveB00tdev', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (7, 'Lance', 20, 'US', 'LanChr', 'b00tdevisbest', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (8, 'Tiffany', 28, 'US', 'Tifferoon', 'autoincrement', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (9, 'Lane', 27, 'US', 'wagslane', 'update_me', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (10, 'Darren', 15, 'CA', 'Dshan', 'found_me', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (11, 'Albert', 55, 'BR', 'BertDev', 'one_al_name', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (12, 'Alvin', 27, 'US', 'AlvinA27', 'easter_egg', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (13, 'Jason', 39, 'JP', 'quickCoder', 'snake_case', false);

CREATE TABLE support_tickets (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  issue_type TEXT NOT NULL,
  description TEXT,
  created_at DATE NOT NULL
);

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (1, 3, 'Payment Failure', 'Transaction did not go through.', '2023-01-10');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (2, 3, 'Refund Request', 'Incorrect charge on account.', '2023-01-20');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (3, 6, 'Account Access', 'Couldnt log in :(', '2023-02-17');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (4, 3, 'Account Access', 'My password is not working!', '2023-02-16');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (5, 11, 'Account Access', 'My password was reset', '2023-02-25');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (6, 7, 'App Bug', 'HELP! I CANT GET SEE MY INBOX!!!', '2023-03-01');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (7, 3, 'Feature Request', 'You should build an AI bear to help on the app', '2023-03-01');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (8, 13, 'Account Access', 'i am gedding a unable to loggin errer', '2023-03-10');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (9, 13, 'Account Access', 'still gedding that err', '2023-03-15');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (10, 10, 'Account Suspension', 'frick u guys, I hate this ****** app', '2023-03-15');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (11, 11, 'Fraud Alert', 'I seem to be getting some suspicious payment requests', '2023-04-07');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (12, 13, 'Account Access', 'My password was reset', '2023-04-20');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (13, 7, 'Account Access', 'boots plz helb', '2023-04-21');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (14, 7, 'Payment Failure', 'I am unable to send my business invoices!', '2023-04-22');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (15, 3, 'Fraud Alert', 'getting some sketchy messages', '2023-05-15');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (16, 11, 'App Bug', 'boots is clearly a dog', '2023-05-24');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (17, 11, 'Account Suspension', 'Please unsuspend my account!', '2023-05-25');


CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (1, 'David', 34, 'US', 'DavidDev', 'insertPractice', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (2, 'Samantha', 29, 'BR', 'Sammy93', 'addingRecords!', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (3, 'John', 39, 'IN', 'Jjdev21', 'welovebootdev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (4, 'Ram', 42, 'IN', 'Ram11c', 'thisSQLcourserocks', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (5, 'Hunter', 30, 'US', 'Hdev92', 'backendDev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (6, 'Allan', 27, 'JP', 'Alires', 'iLoveB00tdev', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (7, 'Lance', 20, 'US', 'LanChr', 'b00tdevisbest', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (8, 'Tiffany', 28, 'US', 'Tifferoon', 'autoincrement', true);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (9, 'Lane', 27, 'US', 'wagslane', 'update_me', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (10, 'Darren', 15, 'CA', 'Dshan', 'found_me', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (11, 'Albert', 55, 'BR', 'BertDev', 'one_al_name', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (12, 'Alvin', 27, 'US', 'AlvinA27', 'easter_egg', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (13, 'Jason', 39, 'JP', 'quickCoder', 'snake_case', false);

CREATE TABLE support_tickets (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  issue_type TEXT NOT NULL,
  description TEXT,
  created_at DATE NOT NULL
);

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (1, 3, 'Payment Failure', 'Transaction did not go through.', '2023-01-10');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (2, 3, 'Refund Request', 'Incorrect charge on account.', '2023-01-20');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (3, 6, 'Account Access', 'Couldnt log in :(', '2023-02-17');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (4, 3, 'Account Access', 'My password is not working!', '2023-02-16');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (5, 11, 'Account Access', 'My password was reset', '2023-02-25');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (6, 7, 'App Bug', 'HELP! I CANT GET SEE MY INBOX!!!', '2023-03-01');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (7, 3, 'Feature Request', 'You should build an AI bear to help on the app', '2023-03-01');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (8, 13, 'Account Access', 'i am gedding a unable to loggin errer', '2023-03-10');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (9, 13, 'Account Access', 'still gedding that err', '2023-03-15');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (10, 10, 'Account Suspension', 'frick u guys, I hate this ****** app', '2023-03-15');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (11, 11, 'Fraud Alert', 'I seem to be getting some suspicious payment requests', '2023-04-07');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (12, 13, 'Account Access', 'My password was reset', '2023-04-20');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (13, 7, 'Account Access', 'boots plz helb', '2023-04-21');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (14, 7, 'Payment Failure', 'I am unable to send my business invoices!', '2023-04-22');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (15, 3, 'Fraud Alert', 'getting some sketchy messages', '2023-05-15');

INSERT INTO support_tickets(id, user_id, issue_type, description, created_at)
VALUES (16, 11, 'Account Suspension', 'Please unsuspend my account!', '2023-05-25');

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  country_code TEXT,
  name TEXT
);

INSERT INTO countries(country_code, name)
VALUES ('US', 'United States');

INSERT INTO countries(country_code, name)
VALUES ('CA', 'Canada');

INSERT INTO countries(country_code, name)
VALUES ('IN', 'India');

INSERT INTO countries(country_code, name)
VALUES ('DE', 'Germany');

INSERT INTO countries(country_code, name)
VALUES ('JP', 'Japan');

INSERT INTO countries(country_code, name)
VALUES ('BR', 'Brazil');

DROP TABLE users;
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    email TEXT,
    name TEXT,
    age INTEGER
);

CREATE INDEX email_idx on users (email);

SELECT name
FROM sqlite_master
WHERE type = 'index';