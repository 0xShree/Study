-- Create database
CREATE DATABASE analysis;

-- Create table
CREATE TABLE teachers(
id bigserial,
first_name varchar(25),
last_name varchar(50),
school varchar(50),
hire_date date,
salary numeric
);

-- delete table
drop table teachers;

-- insert rows
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
	  ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
	  ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
	  ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
	  ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
	  ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

-- select all from table
TABLE teachers;
SELECT * FROM teachers;

-- select specific colums
SELECT last_name, first_name, salary FROM teachers;

-- order by
SELECT last_name, first_name, salary 
FROM teachers
ORDER BY salary desc;

-- column order number in select statement can be used
SELECT last_name, first_name, salary
FROM teachers
ORDER BY 2 desc;

SELECT last_name, first_name, salary
FROM teachers
ORDER BY 3;

-- order by multiple column
SELECT last_name, hire_date, salary
FROM teachers
ORDER BY salary asc, hire_date desc;

SELECT DISTINCT school
FROM teachers
ORDER by school;

SELECT DISTINCT school, salary
FROM teachers
ORDER by school, salary;

SELECT last_name, school, salary
FROM teachers
WHERE school = 'F.D. Roosevelt HS';

SELECT last_name, school, salary
FROM teachers
WHERE school != 'F.D. Roosevelt HS';

SELECT last_name, school, hire_date
FROM teachers
WHERE hire_date < '2000-01-01'

SELECT last_name, school, hire_date
FROM teachers
WHERE salary > 40000;

SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school ILIKE '%roo%'
ORDER by hire_date desc;