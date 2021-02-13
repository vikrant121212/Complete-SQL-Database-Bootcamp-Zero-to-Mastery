/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT c.firstname, c.lastname, o.orderid FROM orders AS o, (SELECT customerid, state, firstname, lastname FROM customers) AS c WHERE  o.customerid = c.customerid AND c.state IN ('NY', 'OH', 'OR') ORDER BY o.orderid; 

/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
select emp_no, first_name, last_name
FROM employees 
WHERE emp_no IN ( 
select emp_no from dept_emp where dept_no =
( select dept_no from dept_manager 


where emp_no = 110183  )
