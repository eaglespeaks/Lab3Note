-- Joshua Isaac Lab Week 12 (SQL Part 2)

-- Question 1
SELECT CONCAT(course_name, '-', semester) AS course_id
from courses;

-- Question 2
SELECT course_id, course_name, lab_time FROM courses
where lab_time like 'Fri%';

-- Question 3
SELECT * FROM assignments
WHERE due_date > CURRENT_DATE;

-- Question 4
SELECT status, COUNT(*) AS assignment_count
FROM assignments GROUP BY status;

-- Question 5 (Joshua Isaac)
SELECT course_id, course_name, max(LENGTH(course_name))
AS name_length FROM courses ORDER by name_length
DESC;

SELECT max(LENGTH(course_name)) as max_length
FROM courses;

SELECT course_id, course_name, LENGTH(course_name) FROM courses
WHERE LENGTH(course_name) = (SELECT max(LENGTH(course_name)) as max_length FROM courses);

-- Question 6
SELECT UPPER(course_name) as course_name_uppercase FROM courses;

-- Question 7
SELECT title, due_date FROM assignments
WHERE due_date LIKE '%-09-%';

-- Question 8
SELECT * FROM assignments WHERE due_date ISNULL;
