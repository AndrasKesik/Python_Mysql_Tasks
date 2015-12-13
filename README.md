# Mysql_tasks

## Main task
Based on the attached relational model please create the database schema.
Document all the creational SQL (DDL) scripts and save them into a separated create.sql file.
For the implementation you need to use MySQL as database management system (DBMS).
You must create scripts which insert data (at least 5 rows) into every table and store it in a separaated insert.sql file.
The tables should contain different records.
For example: when a column is optional (could be NULL) the table should contain records which has that value and which has not.
Meetup registration status value could be:
Going
Tentative
Not going
Presenting
Write some DQL scripts for every table with different WHERE clauses (query.sql).
Write scripts for modifying records (modify.sql).
Write scripts for removing some records (remove.sql).
Write scripts for extending at least one table with some new  nullable columns. (append.sql)
After you wrote the scripts above please create a python application. This application should use the SQL files for creating the DB.
After the schema creation run the insertion scripts.
List all meetup registrations for a particular user.
List meetups which are after 2015.11.27.
List that users who have introduction (NOT NULL).
Keep in mind handle the exceptions if necessary.

## Custom task:
Design a small database which contains at least 3 tables. Every table should has a primary key. The schema should contain some foreign keys so the tables need to be connected to each other (you know this is relational database topic).
This DB could represent any system. It's up on you.
For example: something connected to your hobbies. Be creative!
Create the relational model for it. You can use the Dia application to make it.
Write the creational scripts for it. You can practice the SQL commands on it.
It should be an individual work so do not copy somebody's DB schema!
