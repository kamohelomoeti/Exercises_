--1. Add 6 months to each employee’s hire date using DATEADD(). 
--Expected Columns: emp_id, name, hire_date, hire_plus_6_months
select emp_id, 
  name, hire_date, 
  dateadd(month,6,hire_date) as hire_plus_6_months
from employees;
--2. Use DATEDIFF() to find age in days from dob to today. 
---Expected Columns: student_id, name, age_in_days
select student_id,
  name,
  datediff(current_date,Dob) as age_in_days
from students;
---3.Find how many days are left until each event using DATEDIFF(). 
--Expected Columns: event_id, event_name, days_remaining 
select event_id, 
  event_name, 
  datediff(current_date, event_date) as days_remaing
from events;
---4.  Calculate the number of days between issue_date and due_date. 
---Expected Columns: invoice_id, issue_date, due_date, days_between
select invoive_id, 
  issue_date,due_date, 
  datediff(due_date, issue_date) as day_between
from invoices;
--5. Format start_date as 'Month YYYY' using TO_CHAR(). 
---Expected Columns: course_id, name, formatted_date
select course_id,
  name, 
  to_char(start_date,'month YYYY') as formatted_date
from courses;
--6. Create full date from parts using DATE_FROM_PARTS(). 
--Expected Columns: member_id, full_start_date
select memeber_id, 
  date_from_parts(start_year, start_month, start_day) as full_start_date
from memberships;
--7.  Extend each renewal_date by 1 year using DATEADD(). 
--Expected Columns: sub_id, plan, extended_renewal_date
select sub_id, 
  plan, 
  dateadd( year,1,renewal_date) as extended_renewal_date
from subscriptions;
--8.  Show current date and difference from order_date. Use CURRENT_DATE and DATEDIFF(). 
--Expected Columns: order_id, order_date, today_date, days_since_order 
select order_id, 
  order_date, current_date as today_date,
  datediff(current_date,order_date) as days_sine_order
from orders;
---9. Extract the year from training_date using DATE_PART() or EXTRACT(). 
--Expected Columns: training_id, topic, training_year 
select training_id,
  topic, 
  Date_part(year, training_date) as training_year
from traings;
--10. Extract hour and minute from published_on. 
--Expected Columns: post_id, title, hour_published, minute_published
select post_id,
  title, 
  date_part(hour,published_on) as hour_published,
  date_part(minute, published_on) as minute_published
from Blog_posts;
--11.  Calculate days left until license expiry using DATEDIFF() and today’s date. 
---Expected Columns: driver_id, license_expiry, days_left 
select driver_id,
  license_expiry,
  datediff(current_date, license_expiry) as days_left
from Drivers;
--12. Display the current timestamp and calculate seconds since the message was sent. 
---Expected Columns: message_id, sent_timestamp, current_timestamp, seconds_since_sent
select message_id,
  sent_timestamp, 
  current_timestamp as today_timestamp,
  Datediff(current_timestamp, sent_timestamp) as seconds_since_sent
from messages;
--13. Add 15 days to return_date using DATEADD() to show restock_date. 
--Expected Columns: return_id, return_date, restock_date
select return_id, 
  return_date, 
  dateadd( days, 15, return_date) as restock_date
  from retuns;
--14. Convert assigned_on to date using TO_DATE() (if it's stored as string). 
---Expected Columns: assign_id, assigned_on_date 
select assigned_id, 
  to_date(assigned_on, 'YYYY-MM-DD') as assigned_date
from assignment;
---15. Convert scheduled_time to formatted string like 'April 19, 2025 at 2:00 PM'  using TO_CHAR(). 
---Expected Columns: meeting_id, formatted_meeting_time
select meeting_id, 
  To_char(scheduled_time, 'month-DD-YYYY, HH:MM') as formatted_meeting_time
from meetings;
