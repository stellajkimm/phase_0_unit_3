# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

```
Stella-Kims-MacBook-Pro:~ stellaxp$ sqlite3 dummy.db
-- Loading resources from /Users/stellaxp/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite> 
```


## Release 1: Insert Data 

```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-18 19:51:35  2014-05-18 19:51:35
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Stella', 'Kim', 'stellajkimm@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-18 19:51:35  2014-05-18 19:51:35
2           Stella      Kim         stellajkimm@gmail.com  2014-05-18 19:52:59  2014-05-18 19:52:59
sqlite> 
```

## Release 2: Multi-line commands

```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
```

Cannot add this again because the email field is UNIQUE

## Release 3: Add a column

```
sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(64);
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nickname VARCHAR(64));
sqlite> UPDATE users SET nickname = 'Kimchee' WHERE email = 'kimmy@devbootcamp.com';
sqlite> UPDATE users SET nickname = 'Stellamonster' WHERE email = 'stellajkimm@gmail.com';
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-18 19:51:35  2014-05-18 19:51:35  Kimchee   
2           Stella      Kim         stellajkimm@gmail.com  2014-05-18 19:52:59  2014-05-18 19:52:59  Stellamons

```

## Release 4: Change a value
```
sqlite> UPDATE users SET first_name = 'Kimmy', nickname = 'Ninja Coder', updated_at = DATETIME('now') WHERE id = 1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-18 19:51:35  2014-05-18 20:50:59  Ninja Coder
2           Stella      Kim         stellajkimm@gmail.com  2014-05-18 19:52:59  2014-05-18 19:52:59  Stellamonst
```

## Release 5: Reflect

This was an interesting exercise.  I liked going through it.  It was kind of tough seeing things through the terminal when I am more used to seeing things in applications like Microsoft Access.  One thing I did not get totally is how to make nickname to NOT NULL.  I tried the syntax ``` ALTER TABLE users MODIFY nickname VARCHAR(64) NOT NULL; ``` but it did not work.  Otherwise, I enjoyed this challenge.