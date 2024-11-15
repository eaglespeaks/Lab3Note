-- Joshua Isaac Lab 11 Assignment

SELECT * FROM courses;

select * from assignments LIMIT 10;

SELECT count(*) from courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- My Querries for the Lab assignment 

-- Question 1

SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Question 2

SELECT min(due_date) AS earliest_due_date
FROM assignments;


-- Question 3

SELECT max(due_date) AS latest_due_date
FROM assignments;


-- Question 4

SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


-- Question 5

SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


-- Question 6

SELECT max(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';


-- Optional task

-- Question 1

SELECT COUNT(*) AS total_not_started
FROM assignments
WHERE status = 'Not Started';

-- Question 2 

SELECT course_id, course_name
FROM courses
WHERE lab_time LIKE 'Tue%';

-- Question 3