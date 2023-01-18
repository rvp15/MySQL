-- Active: 1674055407089@@127.0.0.1@3306@girrafe
--BASIC Queries
-- select all the items from table
SELECT * FROM student;

-- select only particular column
SELECT student_id,name,major FROM student;

-- another way to access
SELECT student.name,student.major FROM student;

-- ORDER BY
-- By default ASC, you can mention DESC
SELECT student.name,student.major
FROM student
ORDER BY name DESC;
-- order by nmajor first and then order by its id
SELECT *
FROM student
ORDER BY major,student_id DESC;
-- limit the result
SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;
-----------------------------------------------------Filtering -------------------------------------------
-- with where condition
--<,>,<=,>=,=,<>(not equal to),AND,OR(with comparasion operators)
SELECT *
FROM student
WHERE major='IT-CSC';
 -- with OR ,WHERe condition
 SELECT name,major
FROM student
WHERE major='IT-CSC' OR major='Bio-chem' OR name='vedha';

--(Not Equal)
SELECT *
FROM student
WHERE major<>'IT-CSC';
SELECT *
FROM student
WHERE student_id <=2;

---------------------------IN----------------------
SELECT *
FROM student
WHERE name IN ('Siva','vedha');
SELECT *
FROM student
WHERE major IN ('ECE') AND student_id < 2;

DROP TABLE student;
