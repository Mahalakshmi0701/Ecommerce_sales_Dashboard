USE sql_practice;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    fee INT
);

INSERT INTO students VALUES
(1,'Arun',21,'Chennai'),
(2,'Priya',22,'Madurai'),
(3,'Karthik',20,'Coimbatore'),
(4,'Divya',23,'Chennai'),
(5,'Rahul',21,'Salem');
INSERT INTO courses VALUES
(101,'SQL',5000),
(102,'Python',7000),
(103,'Data Science',10000),
(104,'Web Development',8000);
INSERT INTO enrollments VALUES
(1,1,101,'2024-01-10'),
(2,2,102,'2024-02-12'),
(3,3,101,'2024-03-15'),
(4,4,103,'2024-01-20'),
(5,5,104,'2024-02-18'),
(6,1,102,'2024-03-05');
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
select * from students
where city = 'chennai';
SELECT students.name, courses.course_name
FROM students
JOIN enrollments ON students.student_id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.course_id;
select name from students;
select name,city from students;
select * from students 
where age > 21;
select * from students where age = 21;
select * from students order by age;
select * from students order by age desc;
select * from students where city = 'salem';
select * from students where age < 22;
select name , age from students;
select * from students order by name;
select * from students where city <> 'chennai';
select * from students where age between 21 and 23;
select * from students where Name like 'A%';
select distinct city from students;
SELECT COUNT(*) 
FROM students;
SELECT COUNT(*) FROM students where city = 'chennai';
SELECT avg(age)average_age FROM students;
SELECT CITY , count(*) FROM students group by city; 
SELECT CITY ,count(*) FROM students group by city having count(*) < 1;
select max(AGE) AS HIGHEST_AGE FROM STUDENTS;
select min(AGE) AS LOWEST_AGE FROM STUDENTS;