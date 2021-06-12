-- Deliverable #1

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
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

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

--#15-18 New Query, retrieve employee count by title

SELECT COUNT(title) AS "Count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "Count" DESC;

-- Check the table
SELECT * FROM retiring_titles;

--#19 Export table to csv file - manually

-- Deliverable #2

--#1 Retrieve emp_no, fn, ln and bd from the Employees table

SELECT emp_no, first_name, last_name, birth_date
FROM employees;

--#2 Retrieve from_date & to_date from the dept_emp table
--#3 Retrieve the title column from the titles table
--#4-7 Use distinct on, into, join e and de, join e and t
--#8-9 filter Filter and order results

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by e.emp_no;

-- Check the table
SELECT * FROM mentorship_eligibilty;

--#10 Export Mentorship Eligibility table - manually