---1. List all unique customer names from both tables using UNION.
--Output Columns: customer_name
select customer_name
from online_sale
union 
select customer_name
from store_sale;
----2. List all customer names from both tables using UNION ALL.
--Output Columns: customer_name
select customer_name
from online_sale
union all 
select customer_name
from store_sale;
------------3. Show all unique sale dates from both tables in ascending order.
---Output Columns: sale_date

select sale_date
from online_sale
union
select sale_date
from store_sale
order by sale_date ASC;
---------4. List all sale dates (with duplicates) using UNION ALL.
--Output Columns: sale_date
select sale_date
from online_sale
union all
select sale_date
from store_sale;
------5. Combine both tables and list unique customers who made purchases greater than 250.
--Output Columns: customer_name, amount
select customer_name, amount
from online_sales
union
select customer_name, amount
from store_sale
where amoun > 250;
----6. Combine all records from both tables using UNION ALL.
--Output Columns: customer_name, amount, sale_date
select customer_name, amount, sale_date
from online_sale
union all
select customer_name, amount, sale_date
from store_sale;
----7. Combine both tables but include a new column 'source' that indicates whether the sale was made Online or Store.
---Output Columns: customer_name, amount, sale_date, source
select customer_name, amount, sale_date,
case 
    when 'online_sale' is not null Then 'online'
    END AS source
from online_sale
union all
select customer_name, amount, sale_date,
case
    when 'store_sale' is not null Then 'store'
    END AS source
from store_sale;
----8. Find all customers who appear in both online_sales and store_sales (Hint: use UNION ALL, GROUP BY, and HAVING).
--Output Columns: customer_name, occurrences
select customer_name, count(*) as occurrences
from (
      select customer_name from online_sale
      union all
      select customer_name from store_sale
  ) as all_sales
group by customer_name
having count(*) > 1;
----9. Combine both tables using UNION ALL and calculate the total sales amount across both. Output Columns: total_amoun
select sum(amount) as total_amoun
from ( 
      select amount from online_sale
      union all
      select amount from store_sale
  ) as all_sales;
-----10. Create a single query that lists each customer’s total combined amount from both tables (sum of all their purchases).
---Output Columns: customer_name, total_spen
select customer_name, sum(amount) as total_spent
from ( 
      select customer_name from online_sale
      union all
      select customer_name from store
  ) as all_sales
group by customer_name;


