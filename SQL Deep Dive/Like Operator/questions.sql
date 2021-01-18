/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.

* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/
SELECT ..., EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees;
SELECT emp_no, first_name, EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees
WHERE first_name ILIKE 'M%';                                   


/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
SELECT first_name FROM "employees"
WHERE first_name ILIKE 'A%R'                                   
* Expected output: 1846
*/
SELECT count(emp_no) FROM "employees"
WHERE first_name ILIKE 'A%R'   
                                                  
/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
SELECT count(customerid) FROM customers
WHERE zip::code LIKE '%2%'                                   
                                   
* Expected output: 4211 
*/
SELECT count(customerid) FROM customers
WHERE zip::code LIKE '%2%'                                         



/*
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
SELECT count(customerid) FROM customers
WHERE    zip::text LIKE '2_1%'                                
* Expected output: 109 
*/
SELECT count(customerid) FROM customers
WHERE    zip::text LIKE '2_1%'                                    


/*
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
SELECT states FROM "employees"
WHERE phone::text LIKE '302%'                                   
* Replace null values with "No State"                                                  
* Expected output: https://imgur.com/AVe6G4c
*/
SELECT coalesce(state, 'no states') as "STATE" FROM customers
WHERE phone::text LIKE '302%'                                    
