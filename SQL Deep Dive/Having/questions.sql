
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
select a.emp_no, a.hire_date, count(b.title) from employees as a
inner join titles as b using (emp_no) 
where extract (year from hire_date) > 1991
group by a.emp_no
having count(b.title) > 2 
order by a.emp_no


/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
select a.emp_no, count(b.salary) from employees as a
inner join salaries as b using (emp_no)
inner join dept_emp as c using (emp_no)
where c.dept_no = 'd005'
group by a.emp_no
having count(b.salary) > 15
order by  a.emp_no


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
select a.emp_no, count(b.dept_no) as "various departments" from employees as a 
inner join dept_emp as b using (emp_no)
group by a.emp_no  
having  count(b.dept_no)> 1
