/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT first_name, last_name FROM employees
ORDER BY first_name ASC, last_name DESC


/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT employee_age FROM employees
ORDER BY employee_age ASC 

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
SELECT firstname from employees
WHERE firstname ILIKE 'k%'
ORDER BY hire_date
