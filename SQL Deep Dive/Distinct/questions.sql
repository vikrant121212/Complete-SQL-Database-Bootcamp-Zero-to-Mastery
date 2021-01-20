/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELect distinct title from"public"."titles"


/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELect count(DISTINCT(birth_date)) from "public"."employees"

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/


SELect distinct lifeexpectancy from country
where lifeexpectancy is not NULL
order by lifeexpectancy
