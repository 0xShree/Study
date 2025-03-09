# Create database
```sql
CREATE DATABASE analysis;
```

# Create table
```sql
CREATE TABLE teachers(
id bigserial,
first_name varchar(25),
last_name varchar(50),
school varchar(50),
hire_date date,
salary numeric
);
```
* **bigserial** is an incrementing integer datatype. No need to insert into row

# Delete table
```sql
DROP TABLE teachers;
```

# Insert Rows
```sql
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
	  ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
	  ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
	  ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
	  ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
	  ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
```

# Select all from table
```sql
TABLE teachers;
SELECT * FROM teachers;
```

# Select specific columns
```sql
SELECT last_name, first_name, salary FROM teachers;
```

# ORDER BY
## Order by descending
```sql
SELECT last_name, first_name, salary 
FROM teachers
ORDER BY salary desc;
```
* Default is `ASC`. No need to add. To order by descending `DESC` need to add.

## Order by column number in select
```sql
SELECT last_name, first_name, salary
FROM teachers
ORDER BY 2 desc;
```

## Order by multiple columns
```sql
SELECT last_name, hire_date, salary
FROM teachers
ORDER BY salary asc, hire_date desc;

SELECT DISTINCT school
FROM teachers
ORDER by school;

SELECT DISTINCT school, salary
FROM teachers
ORDER by school, salary;
```

# WHERE
Table of operators used along with `WHERE` clause
| Operator |              Function              |                              Example |
| :------- | :--------------------------------: | ----------------------------------- |
| =        |              Equal to              |        WHERE school = 'Baker Middle' |
| <> or != |           Not equal to*            |       WHERE school <> 'Baker Middle' |
| \>       |            Greater than            |                 WHERE salary > 20000 |
| <        |             Less than              |                 WHERE salary < 60500 |
| \>=      |      Greater than or equal to      |                WHERE salary >= 20000 |
| <=       |       Less than or equal to        |                WHERE salary <= 60500 |
| BETWEEN  |           Within a range           | WHERE salary BETWEEN 20000 AND 40000 |
| IN       |    Match one of a set of values    | WHERE last_name IN ('Bush', 'Roush') |
| LIKE     |  Match a pattern (case sensitive)  |         WHERE first_name LIKE 'Sam%' |
| ILIKE    | Match a pattern (case insensitive) |        WHERE first_name ILIKE 'sam%' |
| NOT      |        Negates a condition         |    WHERE first_name NOT ILIKE 'sam%' |

## = operator
```sql
SELECT last_name, school, salary
FROM teachers
WHERE school = 'F.D. Roosevelt HS';
```

## <> or != operator
```sql
SELECT last_name, school, salary
FROM teachers
WHERE school != 'F.D. Roosevelt HS';
```
## < and > operator
```sql
SELECT last_name, school, hire_date
FROM teachers
WHERE hire_date < '2000-01-01'

SELECT last_name, school, hire_date
FROM teachers
WHERE salary > 40000;
```

## LIKE and ILIKE
LIKE(Sql Standard) operator is case sensitive and ILIKE(Postgres) is case insensitive
* % wildcard matching one or more characters
* _ wildcard matching just one character

For Example, to find `baker`
```sql
LIKE 'b%'
LIKE '%ak%'
LIKE '_aker'
LIKE 'ba_er'
```

## BETWEEN
Use caution with BETWEEN, because its inclusive