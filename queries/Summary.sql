
--HERE--
-- Summary #1
-- Employee count by department
SELECT COUNT(ce.emp_no), dm.dept_no, d.dept_name
FROM current_emp as ce
LEFT JOIN dept_manager as dm
ON ce.emp_no = dm.emp_no
RIGHT JOIN departments as d
ON dm.dept_no = d.dept_no
GROUP BY dm.dept_no, d.dept_name
ORDER BY dm.dept_no;

---------------------------------------------
-- Summary #1
---------------------------------------------

-- Departments showing current manager counts
SELECT dm.dept_no, d.dept_name, COUNT(ce.emp_no)
FROM dept_manager AS dm
LEFT JOIN current_emp AS ce
ON dm.emp_no = ce.emp_no
RIGHT JOIN departments AS d
ON dm.dept_no = d.dept_no
GROUP BY dm.dept_no, d.dept_name
ORDER BY dm.dept_no;

SELECT * FROM unique_titles;

-- Managers who are eligible for the retirement package 
SELECT ut.first_name, ut.last_name, ut.title  
FROM unique_titles AS ut
WHERE title = 'Manager';

---------------------------------------------
-- Summary #2
---------------------------------------------

-- Current employees who can be mentors grouped by title

SELECT * FROM mentorship_eligibility;

SELECT COUNT(title) AS "Count", title
FROM mentorship_eligibility
GROUP BY title
ORDER BY "Count" DESC;
