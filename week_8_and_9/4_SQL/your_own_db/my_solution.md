```

Last login: Tue May 27 14:31:09 on ttys000
Stella-Kims-MacBook-Pro:~ stellaxp$ sqlite3 library.db
-- Loading resources from /Users/stellaxp/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...> address VARCHAR(128) UNIQUE NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL);
sqlite> CREATE TABLE books (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> title VARCHAR(64) NOT NULL,
   ...> author VARCHAR(64) NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL);
sqlite> CREATE TABLE library (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> user_id INTEGER NOT NULL,
   ...> book_id INTEGER NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL,
   ...> FOREIGN KEY (user_id) REFERENCES users(id),
   ...> FOREIGN KEY (book_id) REFERENCES books(id));
sqlite> INSERT INTO users (first_name, last_name, address, created_at, updated_at) VALUES ('Sid', 'Patel', '123 Brown St', DATETIME('now'), DATETIME('now')); 
sqlite> SELECT * from users;
id          first_name  last_name   address          created_at           updated_at         
----------  ----------  ----------  ---------------  -------------------  -------------------
1           Stella      Kim         123 Green Drive  2014-05-27 18:48:46  2014-05-27 18:48:46
2           Sid         Patel       123 Brown St     2014-05-27 18:50:19  2014-05-27 18:50:19
3           Bobby       Brown       341 Tree St      2014-05-27 18:50:43  2014-05-27 18:50:43
4           John        Smith       31 Black St      2014-05-27 18:51:03  2014-05-27 18:51:03
5           Christine   Lane        27 Tally Drive   2014-05-27 18:51:43  2014-05-27 18:51:43
6           Chris       Lee         23 Swallow Driv  2014-05-27 18:52:06  2014-05-27 18:52:06
7           David       James       2 Cup Drive      2014-05-27 18:52:31  2014-05-27 18:52:31
8           Brendyn     Song        88 Guitar St     2014-05-27 18:53:04  2014-05-27 18:53:04
9           Helen       Park        233 Coffee St    2014-05-27 18:53:31  2014-05-27 18:53:31
10          Samuel      Lee         233 Candle St    2014-05-27 18:53:51  2014-05-27 18:53:51

sqlite> SELECT * from library;
id          user_id     book_id     created_at           updated_at         
----------  ----------  ----------  -------------------  -------------------
1           1           3           2014-05-27 18:58:45  2014-05-27 18:58:45
2           2           4           2014-05-27 18:58:53  2014-05-27 18:58:53

sqlite> SELECT * from books;
id          title               author           created_at           updated_at         
----------  ------------------  ---------------  -------------------  -------------------
1           Great Expectations  Charles Dickens  2014-05-27 18:56:33  2014-05-27 18:56:33
2           Steve Jobs          Walter Isaacson  2014-05-27 18:57:09  2014-05-27 18:57:09
3           Beautiful Redempti  Margaret Stohl   2014-05-27 18:57:33  2014-05-27 18:57:33
4           Practical Object-O  Sandi Metz       2014-05-27 18:57:57  2014-05-27 18:57:57

sqlite> SELECT first_name, last_name, title, author, library.created_at 
   ...> FROM users JOIN library ON user_id = users.id
   ...> JOIN books ON books.id = book_id;
first_name  last_name   title                 author          created_at         
----------  ----------  --------------------  --------------  -------------------
Stella      Kim         Beautiful Redemption  Margaret Stohl  2014-05-27 18:58:45
Sid         Patel       Practical Object-Ori  Sandi Metz      2014-05-27 18:58:53

```