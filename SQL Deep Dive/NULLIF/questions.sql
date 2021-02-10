/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

select special, prod_id,
NULLIF(special,0) as "specials" from products
