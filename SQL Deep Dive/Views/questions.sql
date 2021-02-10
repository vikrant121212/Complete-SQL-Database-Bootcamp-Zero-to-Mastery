/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/
CREATE view "90-95" as
select emp_no, hire_date from "public"."employees"
where extract ( year from hire_date ) between 1990 and 1995
order by hire_date

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/
create view "big bucks" as
select emp_no, salary from "public"."salaries"
where salary > 80000

-- ...
