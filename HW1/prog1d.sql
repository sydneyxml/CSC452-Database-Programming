--Ximan Liu
--CSC 452
--prog1d.sql


--(a)
--For each faculty list the faculty’s name and the names of his/her student advisees
SELECT STUDENT.std_name, FACULTY.fac_name
FROM STUDENT, FACULTY
WHERE faculty_id = advisor_id;


--(b)
--Give the names and phone numbers of students who are not enrolled in any courses
SELECT std_name, home_phone
FROM STUDENT
WHERE student_id NOT IN (SELECT student_id FROM ENROLLMENT);


--(c)
--Give the student name and the gpa for the student with the highest gpa than all colleagues with a similar (exact) total number of credit hours
SELECT s.std_name, s.gpa
FROM STUDENT s 
JOIN
(SELECT total_credits, MAX(gpa) AS max_gpa
FROM STUDENT
GROUP BY total_credits) maxgpa
ON s.total_credits = maxgpa.total_credits
WHERE s.gpa = maxgpa.max_gpa;


--(d)
--For each student name,list the course numbers(s), the student took, where the student obtained the lowest grade
SELECT s.std_name, e.course#
FROM STUDENT s
JOIN ENROLLMENT e
ON s.student_id = e.student_id
JOIN
(SELECT student_id, MIN(grade) AS min_grade
FROM ENROLLMENT
GROUP BY student_id) mingrade
ON e.student_id = mingrade.student_id
WHERE e.grade = mingrade.min_grade
ORDER BY s.std_name, mingrade.min_grade;


--(e)
--Give the names of faculty who do not advise any students
SELECT fac_name
FROM FACULTY
WHERE faculty_id NOT IN (SELECT advisor_id FROM student);


