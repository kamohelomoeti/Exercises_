---1Write a SQL query to retrieve all columns from the employees table. 
select * 
from employees;
----2Write a SQL query to find all the unique departments in the employees table.
select Distinct Department 
From employees;
----3Write a SQL query to retrieve all employees' first and last names, ordered by salary in 
descending order.
select first_name,
        last_name
from employees
order by salary desc;
----4Write a SQL query to retrieve the top 5 highest-paid employees.
select first_name,
        last_name,
        salary
from employees
order by salary Desc
limit 5;
-----5Write a SQL query to find employees who work in the IT department.
select first_name,
        last-name,
        department
from employees
where department = 'IT';
----------6Write a SQL query to find employees who work in the Finance department AND have a 
salary greater than 58,000.
select first_name,
        last_name,
        Department
        salary
from employees
where department = 'finance' 
AND salary > 58000;
------7Write a SQL query to find employees who work in the HR department OR the Marketing department
select first_name, last_name
from employees 
where depeartment = 'HR' or department = 'marketing';
----8Write a SQL query to find employees who do not work in the IT department. 
select first_name, last_name, Department
from employees
where departmrnt Not 'IT';
-----9Write a SQL query to find employees who are in the HR, IT, or Finance departments.
select first_name, last_name, department
from employees
where Departemnt In( 'IT', 'HR', 'finance');
------10 Write a SQL query to find employees who are in the IT department, have a salary greater than 50,000, and are located in New York. 
select first_name, Last_name, department, salary, city
from employees
where department = 'IT' AND salary > 50000 AND city = 'New york';
----11Write a SQL query to retrieve the first and last names of employees who work in the Finance or Marketing department, earn more than 52,000, and order the results by salary in descending order.
select first_name, Last_name
from employees
where department In ('finance','marketing') AND salary > 58000
order by salary desc;
-----12Write a SQL query to find all the unique cities where employees work, excluding those in the IT and HR departments.
select distinct city
from employees
where department not in ( 'IT','HR');
-------13Write a SQL query to retrieve employees who are NOT in the Finance department, have a salary greater than 50,000, and order the results by hire date in ascending order.
select *
from employees
where department not 'finance'
AND salary > 50000 
order by salary ASC;
------14Write a SQL query to find the first 3 employees who work in either Chicago or Los Angeles and belong to the IT or Marketing department
select *
from employees
where city = 'chicago' or city = 'los angeles'
AND department IN( 'IT','Marketing')
limit 3;
--------
      

