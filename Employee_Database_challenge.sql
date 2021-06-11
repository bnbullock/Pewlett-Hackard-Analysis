--#1 Retrieve emp_no, first_name and last_name from the Employees table

SELECT emp_no, first_name, last_name
FROM employees;

--#2 Retrieve title, from_date, to_date from the Titles table

SELECT title, from_date, to_date
FROM titles;

--#3-5 create new table, join emp & titles, filter on birthdate

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	from_date,
	to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no;

-- Check the table
SELECT * FROM retirement_titles;

--#6,7 Export retirement_titles table to a csv file manually

--#8-12 Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Check the table
SELECT * FROM unique_titles;

--#13 Export unique_titles table to a csv file manually

--#15-18 

SELECT COUNT(title) as "Count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "Count" DESC;

-- Check the table
SELECT * FROM retiring_titles;

