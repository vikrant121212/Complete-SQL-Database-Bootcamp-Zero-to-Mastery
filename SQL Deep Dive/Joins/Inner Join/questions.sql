
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select a.firstname, a.lastname, b.orderid, state
from orders as b  inner join customers as a on a.customerid = b.customerid
where a.state in ('NY','OH','OR' )


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select prod_id, quan_in_stock from "public"."inventory"

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT a.first_name, dp.dept_name
FROM employees AS a
INNER JOIN dept_emp AS de ON de.emp_no = a.emp_no
INNER JOIN departments AS dp ON dp.dept_no = de.dept_no


