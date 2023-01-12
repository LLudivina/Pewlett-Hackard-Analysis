# Pewlett-Hackard-Analysis

## Overview of the Project:
For this module, we were tasked with helping Bobby perform employee research.  As an HR analyst, Bobby was instructed to find out which employees will be retiring in the next few years and how many positions the company will need to fill.  The employee data was available in six CSV files through the use of Excel and VBA.  However, Pewlett Hackard decided to update their methods to make use of a Structured Query Language (SQL).  This is where Bobby needed assistance.  After this analysis was completed, two more assignments were added to determine the number of employees per title and to identify the employees who were eligible to participate in a mentorship program.   

### *purpose*
The purpose of this project was to build an employee database with SQL and help Bobby complete the two last assignments using data modeling, engineering, and analysis skills. 

## Results 
### Deliverable #1, The Number of Retiring Employees by Title
For this part of the project, a query was first created to retrieve data and make a table for employees who were born between January 1, 1952 and December 31, 1955.  The query was as follows.

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

### Deliverable #2, Employees Eligible for the Mentorship Program
Moving on to deliverable 2, a new query was written and executed to create a table of employees that were eligible for a mentorship program.  A quick glimpse of the table can be seen below as table 1. 

#### *Table 1*

![Alt text](Data/resources/mentorship_eligibility%20table.png)

Overall, there were four major points that stood out to me and can help with the creation of this project analysis.
        * Make sure you have the right binary path between your PostgreSQL and pgAdmin as Postgres is the        
          database that holds the files and pgAdmin is the interface used to create and use the database
        * pgAdmin 4 can be a bit tricky to use if you forget to refresh your tables after creating one 
        * Quick DBD is a great way to create an Entity Relationship Diagrams (ERDs) because it is user friendly and 
          allows you to save your diagrams as png 
        * Save your schema dialog as a .sql file to save your queries and re-open them when needed


## Summary
It was interesting to work with the data as so many different tables can be created.  Just like Pewlett Hackard, companies can use their data to make internal business decisions.  For example, using the <SELECT * FROM titles> and briefly looking at the titles table for Pewlett Hackard, I could see a lot of engineering positions.  However, I did not see a lot of or any positions for Data Analysts or computer programmers that companies have now a day. Hence using a query to look at a company's job titles can inform the company of what other job positions they could add to keep up with technology. Another question companies can use queries for is to keep track of their suppliers.  They could compare current suppliers or see if new suppliers need to be added as back-up.  Overall, SQL is an important tool to have in the business world. 