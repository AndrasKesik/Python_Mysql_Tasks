-- List all meetups for a particular user
SELECT 
	meetupregistrations.userid,
	meetups.location,
	meetups.start,
	meetups.topic 
FROM meetupregistrations JOIN meetups ON meetupregistrations.meetupid = meetups.id 
WHERE meetupregistrations.UserId = 2;

-- Meetups after a specific date
SELECT * FROM meetups
WHERE meetups.Start > '2015-11-27 00:00:00';	

-- 	All users with introduction
SELECT * FROM users 
WHERE introduction IS NOT NULL;	
