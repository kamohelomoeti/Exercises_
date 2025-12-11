---1. Q1. Show all employees with their salary. If salary is NULL, display 0. 
--Expected Columns: employee_id, name, salary_with_default
select employee_id, name, if null(salary,0) as salary_with_default 
from employees;

----2. Q2. Show employee names with their department. If department is NULL, show 
---"Not Assigned". 
---Expected Columns: employee_id, name, department_nam
select employee_id, name, If null(department, 'Not Assigned') as department
from employees;

---3. Q3. Find orders with NULL customer_id using ISNULL(). 
--Expected Columns: order_id, customer_id 
select order_id, customer_id
from orders 
where customer_id is Null;

---4. Q4. Show all orders. If delivery_date is NULL, show 'Pending'. 
--Expected Columns: order_id, customer_id, delivery_status 
select order_id, customer_id, if null ( delivery_date, 'pending') as delivery_status
from orders;

--5. Q5. Show all students and their grades. Replace NULL with 0. 
--Expected Columns: student_id, name, final_grade 
select student_id, name, if null( grade, 0)
from students;

---6. Q6. Count students who haven't been graded. 
--Expected Columns: not_graded_count
select count(*) as not_graded_count
from students
where grade is Null;

----7. Q7. Show product name, price, and final price after discount (assume 0 if 
--discount is NULL). 
--Expected Columns: product_id, name, final_price
select product_id,
        name,
        price - if null( discount, 0) as final_price
from products;

----8. Q8. Count how many customers have no email. 
--Expected Columns: missing_email_count
select count(email) as missing_email_count
from customer;

---9. Q9. Show all customers with email. If NULL, display "No Email". 
--Expected Columns: customer_id, name, email_display
select customer_id, name, if null(email, 'no email') as email_display
from customers;

--10. Q10. Show payment details with method replaced by "Unknown" if NULL. 
--Expected Columns: payment_id, method_display, status 
select payment_id, if null( method,'unknown') as method_display, status
from payments;

--11. Q11. Show items and their quantity (0 if NULL). 
--Expected Columns: item_id, item_name, quantity_checked
select item_id, item_name, if null( quantity, 0) as quantity_checked
from Inventory;

---12.Q12. Show employee ID and the first available value among bonus or 
--commission. 
--Expected Columns: emp_id, first_available_reward 
select emp_id, coalesce(bonus, commission) as first_available_reward
from employees_extra;

--13. Q13. Count classes that don’t have a room assigned. 
--Expected Columns: no_room_count 
select count(room) as no_room_count
from classes;

--14. Q14. Show attendance records with status. Replace NULL with "Not Marked". 
--Expected Columns: student_id, date, attendance_status
select student_id, date, if null(status, 'not marked') as attendance_status
from Attendance;

---15. Q15. Show account ID, account_type (or 'Unknown'), and balance (or 0). 
--Expected Columns: account_id, type_display, balance_checked
select account_id,
      if null(account_type,'unknown') as type_display
      if null( balance, 0) as balance_checked
from bank_accounts;

--16. Q16. Show all projects with a start date. If start_date is NULL, display 'TBD'. 
--Expected Columns: project_id, title, start_display
select project_id, title, if null( start_date, 'TBD') as start_display
  from projects;

--17. Q17. Display reviews showing comment (or 'No Comment') and rating (or 0). 
--Expected Columns: review_id, product_id, comment_display, rating_display
select review_id, product_id, 
  if null( comment, 'no comment') as comment_display
  if null( rating, 0) as rating_display
from reviews;

---18. Q18. Show the supplier contact number. Use COALESCE(phone, alt_phone, 'No 
--Contact'). 
--Expected Columns: supplier_id, name, contact_number 
select supplier_id, name, coalesce(phone,alt_phone,'No contact') as contact_number
  from suppliers;

---19. Q19. Show all users and their preferences. Replace all NULLs with defaults: 
--• Theme → "Light" 
--• Language → "English" 
--• Timezone → "UTC" 
--Expected Columns: user_id, theme_set, language_set, timezone_set
select user_id,
      if null(theme,'light') as theme_set
      if null(language,'english') as language_set
      if null(Timezone, 'UTC') as timezone_set
from user_settings;

---20. Q20. Show maintenance log with:  
--• issue → default to "Unknown Issue" 
--• technician → default to "Not Assigned" 
--Expected Columns: record_id, machine_id, issue_log, technician_name
select record_id, machine_id, 
        if null(issue, 'uknown issues') as issue_log
        if null(technician, 'not assigned') as technician_name
from maintenance;

  
