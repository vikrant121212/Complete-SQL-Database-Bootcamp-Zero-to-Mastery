/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

select hire_date, count(emp_no) 
from "public"."employees"
group by hire_date

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

select a.emp_no , count(b.title) as "title earned" from  employees as a
join titles as b using (emp_no)
where EXTRACT ( year from hire_date  ) > 1991
group by a.emp_no


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/
select a.emp_no, b.from_date, b.to_date  from employees as a
join dept_emp as b using (emp_no)
where  b.dept_no = 'd005'
group by a.emp_no, b.from_date, b.to_date
