-- Insert data into users table
INSERT INTO `mydb`.`users`
(`Name`,
`Birthdate`,
`Introduction`,
`Avatar`,
`Email`)
VALUES
('User1',
'1991-02-10',
'Hello my name is user1',
'whatisthis',
'myemail@site.com');

INSERT INTO `mydb`.`users`
(`Name`,
`Birthdate`,
`Introduction`,
`Avatar`,
`Email`)
VALUES
('User2',
'1992-12-23',
'Hello my name is user2',
'isthiswhat',
'myemail2@site2.com');

INSERT INTO `mydb`.`users`
(`Name`,
`Birthdate`,
`Introduction`,
`Email`)
VALUES
('User3',
'1989-11-09',
'Hello my name is user3',
'myemail3@site3.com');

INSERT INTO `mydb`.`users`
(`Name`,
`Birthdate`,
`Introduction`,
`Avatar`)
VALUES
('User4',
'1994-03-15',
'Hello my name is user4',
'thisiswhat');

INSERT INTO `mydb`.`users`
(`Name`,
`Birthdate`,
`Avatar`,
`Email`)
VALUES
('User5',
'1990-01-01',
'iswhatthis',
'myemail5@site5.com');

--Insert data into statuses table
INSERT INTO `mydb`.`statuses`
(`Value`)
VALUES
('Going');

INSERT INTO `mydb`.`statuses`
(`Value`)
VALUES
('Tentative');

INSERT INTO `mydb`.`statuses`
(`Value`)
VALUES
('Not going');

INSERT INTO `mydb`.`statuses`
(`Value`)
VALUES
('Presenting');

INSERT INTO `mydb`.`statuses`
(`Value`)
VALUES
('Bartender');

-- Insert data into meetups table
INSERT INTO `mydb`.`meetups`
(`Start`,
`Location`,
`Topic`,
`Description`)
VALUES
('2016-01-01 15:00',
'Miskolc',
'SQL Databases',
'How to use databases');
SELECT * FROM mydb.statuses;

INSERT INTO `mydb`.`meetups`
(`Start`,
`Location`,
`Topic`,
`Description`)
VALUES
('2015-02-02 12:00',
'Debrecen',
'Git',
'How to use repositories and git');
SELECT * FROM mydb.statuses;

INSERT INTO `mydb`.`meetups`
(`Start`,
`Location`,
`Topic`,
`Description`)
VALUES
('2016-03-03 10:00',
'Budapest',
'Operating systems',
'How operating systems work');
SELECT * FROM mydb.statuses;

INSERT INTO `mydb`.`meetups`
(`Start`,
`Location`,
`Topic`,
`Description`)
VALUES
('2015-04-04 11:00',
'Gyor',
'UML diagramms',
'How to make an UML diagramm and why is it good for your team');
SELECT * FROM mydb.statuses;

INSERT INTO `mydb`.`meetups`
(`Start`,
`Location`,
`Topic`,
`Description`)
VALUES
('2016-05-05 14:00',
'Pecs',
'Python programming',
'How to program in python');
SELECT * FROM mydb.statuses;

-- Insert data into meetupregistrations table

-- First meetup
INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('1',
'1',
'1');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('1',
'1',
'2');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('4',
'1',
'3');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('3',
'1',
'4');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('2',
'1',
'5');
SELECT * FROM mydb.users;

-- Second meetup
INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('4',
'2',
'1');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('2',
'2',
'2');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('1',
'2',
'3');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('1',
'2',
'4');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('3',
'2',
'5');
SELECT * FROM mydb.users;

-- Third Meetup
INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('2',
'3',
'1');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('4',
'3',
'2');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('5',
'3',
'3');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('1',
'3',
'4');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('3',
'3',
'5');
SELECT * FROM mydb.users;

-- 4th Meetup
INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('1',
'4',
'1');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('4',
'4',
'2');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('1',
'4',
'3');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('3',
'4',
'4');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('4',
'4',
'5');
SELECT * FROM mydb.users;

-- 5th Meetup
INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('5',
'5',
'1');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('5',
'5',
'2');
SELECT * FROM mydb.users;
INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('5',
'5',
'3');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('5',
'5',
'4');
SELECT * FROM mydb.users;

INSERT INTO `mydb`.`meetupregistrations`
(`StatusId`,
`MeetupId`,
`UserId`)
VALUES
('5',
'5',
'5');
SELECT * FROM mydb.users;
