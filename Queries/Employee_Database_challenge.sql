-- Create new table Retirement Titles that holds all the titles of employees who 
--were born between January 1, 1952 and December 31, 1955
SELECT employees.emp_no, first_name, last_name,
	   titles.title,
	   titles.from_date,
	   titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY employees.emp_no;

-- Check the table
SELECT * FROM retirement_titles;

-- Copy of provided query from stater code : Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

SELECT DISTINCT ON (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title				
INTO unique_table
FROM retirement_titles as r 
WHERE (r.to_date='9999-01-01')		
ORDER BY r.emp_no ;

SELECT * FROM unique_table;

--retrieve the number of employees by their most recent job title who are about to retire
SELECT COUNT(u.title), u.title
INTO retiring_titles
FROM unique_table as u
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

--employees Eligible for the Mentorship Program
SELECT DISTINCT ON(e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees as e
LEFT JOIN dept_emp as d
ON(e.emp_no = d.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND d.to_date = '9999-01-01'
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty;
