CREATE DATABASE sale_representative;


USE sale_representative;

CREATE TABLE CALLS(
number_dialed VARCHAR(30) NOT NULL,
date_dialed DATE NOT NULL,
time_dialed TIME NOT NULL, 
user_extension VARCHAR(30) NOT NULL,
result VARCHAR(30), 
CONSTRAINT CK_results CHECK( result IN ('Voicemail', 'Wrong Number', 'Answered'))
);


SELECT  * FROM calls;
INSERT INTO CALLS VALUES("0621994422","2016-04-02","14:00","123","Answered");


# Q2.
SELECT COUNT(number_dialed)
FROM calls
GROUP BY user_extension
ORDER BY  date_dialed; 

# Q3.
SELECT COUNT(number_dialed)
FROM calls
GROUP BY number_dialed
ORDER BY number_dialed;


# Q4.
SELECT * , COUNT(number_dialed) AS number_of_times
FROM calls
GROUP BY number_dialed;


# Q5.
SELECT (COUNT(number_dialed)/calls_made)*100
FROM  (SELECT COUNT(number_dialed) AS calls_made ,number_dialed FROM calls)
WHERE result = "Answered"
GROUP BY user_extention, date_dialed;


# Q6.
SELECT number_dialed
FROM calls
ORDER BY number_dialed DESC
LIMIT 10;


# Q7.
 SELECT user_extension
 FROM calls
 GROUP BY user_extension , date_dialed
 HAVING COUNT(number_dialed) < 100;


# Q8.
SELECT (MAX(time_dialed) - MIN(time_dialed)) AS work_duration
FROM calls
GROUP BY user_extension, date_dialed;
