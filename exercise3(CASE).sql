--1. Classify each product by price: 
----● 'Expensive' if price > 1000 
---● 'Mid-range' if price between 100 and 1000 
---● 'Budget' if price < 100 
select product_name, price,
case
    when price > 1000 Then 'expensive'
    when price between 100 and 1000 Then 'mid-range'
    when price < 100 Then 'Budget'
END as price_category
from products
------2. Label each order: 
--● 'High Value' for orders ≥ 1000 
--● 'Medium Value' for 500–999.99 
--● 'Low Value' for orders < 500 
select customer_name, amount
case 
    when amount >= 1000 Then 'High value'
    when amount between 500 and 999.99 Then 'Medium value'
    when amount < 500 Then 'Low value'
END as order_vale-category
from orders
----3. Categorize employee position: 
---● If in 'IT' and salary > 80000 → 'Senior IT' 
---● If in 'HR' and salary > 55000 → 'Experienced HR' 
---● Otherwise → 'Staff' 
select emp_name, department, salary,
case 
    when Department = 'IT' and salary > 80000 Then 'senior IT'
    when Department = 'HR' and salary > 55000 'Experience HR'
    ELSE 'staff'
END as position_level
from employees;
-----4. Assign a letter grade: 
--● ≥ 90: 'A' 
--● 80–89: 'B' 
--● 70–79: 'C' 
--● 60–69: 'D' 
--● < 60: 'F'
select student_name, score,
case 
    when score >= 90 Then 'A'
    when score between 80 and 89 Then 'B'
    when score between 70 and 79 Then 'C'
    when score between 60 aand 69 Then 'D'
    when score < 60 Then 'F'
END as grade
from students;
-----6. Convert priority to labels: 
--● 3 → 'High' 
--● 2 → 'Medium' 
--● 1 → 'Low' 
select issue_type, priority,
case 
    when priority = 3 Then 'High'
    when priority = 2 Then 'Medium'
    when priority = 1 Then 'Low'
END as priority_level
from Tickets;
------7. Calculate attendance % and classify: 
--● ≥ 90% → 'Excellent' 
---● 75–89% → 'Good' 
---● < 75% → 'Needs Improvement' 
select studentid,
        ( (days_present*100)/Total_days) as attendance_attence,
case
    when ( (days_present*100)/Total_days) >= 90 Then 'Excellent'
    when ( (days_present*100)/Total_days) between 75 and 89 Then 'Good'
    when ( (days_present*100)/Total_days) < 75 Then 'needs improvement'
END as attendance_status
from attendance;
------8. Label stock status: 
--● 0 → 'Out of Stock' 
--● 1–5 → 'Low Stock' 
---● 5 → 'In Stock' 
select product_id, stock_qty,
case 
    when stock_qty = 0 Then ' Out of stock'
    when stock_qty between 1 and 5 Then ' Low stock'
    when stock_qty > 6 Then 'In stock'
END as stock_status
from product_inventory;
--------9. Classify by size: 
--● ≥ 25 → 'Large' 
--● 10–24 → 'Medium' 
--● < 10 → 'Small' 
select subject, enrolled_students,
case
    when enrolled_students >= 25 Then 'Large'
    when enrolled_students between 10 and 24 Then 'Medium'
    when enrolled_students < 10 Then 'Low'
END as class_size_category
from classes;
------10. Apply discount flag: 
--● If payment_method = 'Cash' and amount ≥ 200 → 'Eligible for Discount' 
--● Otherwise → 'Not Eligible' 
select payment_id, Payment_method, amount,
case 
    when payment_method = 'cash' and amount >= 200 Then 'eligible for discount'
    Else 'Not eligible'
END as discount_eligibilty
from payments;
