---1.Objective: Join students and grades to display only students who have grades
select s.student_id,s.student_name,g.grade
from students as s
inner join grades as g
ON s.student_id = g.student_id;
----2.Objective: Display all employees and the departments they belong to. Include employees with no department.
select e,emp_id, e.emp_name, d.dept_name
from employees as e
left join department as d
ON e.emp_id = d.emp_id;
----3.Objective: Display a complete list of products and their quantities sold. Include products with no sales and sales for unknown products.
select p.product_id, p.product_name, s.quantity
from productd as p 
full outer join sales as s
ON p.product_id = s.product_id;
-----4. Objective: Display all orders and indicate whether the customer is “New” or “Returning”.
select o.order_id, o.customer_id, o.amount, c.customer_name,
case
    when c.customer_name is not null Then 'returnimg'
    ELSE 'New'
END AS customer_type
from orders as o
left join customers as c
ON o.customer_id = c.customer_id;
----5. Objective: Show total sales per region and include regions with no sales.
select s.region_id,
        r.region_name, 
      sum(amount) as total_sales
from sales as s
left join region as r
ON s.region_id = r.region_id
group by s.region_id,
        r.region_name;
--6. Objective: Classify students based on attendance. 
select s.student_id, s.name, a.days_present,
case
    when a.days_present =< 5 Then 'poor attendance'
    when a.days_present between 11 and 19 Then ' needs improvement'
    when a.days_present = 20 Then 'excellent'
END AS Attendance_status
from student as s
left join attendance as a
ON s.student_id = a.attendance;
---7. Objective: Show number of tasks per project. Only include projects that have tasks. 

select p.project_id, p.name, count(t.task_id) as task_count
from projects as p
inner join tasks as t
ON p.projrct_id = t.project
group by p.product_id, p.name
---8. Objective: Classify customers based on whether they returned anything and filter by high order total. 
select o.cust_id, o.order_total, r,return_total, 
case
    when r.return_total is not null Then 'returned'
    ELSE 'no return'
END AS return_status
from orders as a
full outer join returns as r
ON o.cust_id = r.cust_id
where order_total > 100;
--9. Objective: Count how many times each user logged in.
select u.users_id, u.name, count(l.login_date) login_count
from user as u
left join logins as l 
ON u.user_id = l.user_id
group by u.users, u.name
order by count(l.login_date) desc;
---10. Objective: Show all teachers and the subjects they teach. If no subject, label appropriately. 
select t.teachers_id, 
        t.teacher_name, 
        coalesce(s.subject_name, 'subject not assigned') as subject_name
from teachers as t
left join subjects as s
ON t.teacher_id = s.teacher_id
order by teacher_name asc;


