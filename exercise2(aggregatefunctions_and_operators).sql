---1. List all distinct departments in the students table.
select distinct department
from studnts;
---2Get the average age of students per department.
select avg(age) as average_age, department
from student
group by department;
-----3 Show departments with more than 1 student.
select count(student_ID) as student_count, department
from studdents
group by depaetment
having count(student_ID) > 1;
----4 Get all students whose age is between 21 and 23.
select student_ID, name, department, age
from student
where age between 21 and 23 ;
-----5 List all students in the IT or HR department who are older than 21
select student_ID, name, age, department
from student
where department = 'IT' or departmnent = 'HR'
AND age > 21;
------6  Show total credits per department, only for departments with more than 5 total credits.
select sum(credit) as total_credit, department
from courses 
group by department
having sum(credit) > 5;
------7 List all courses that do not have 4 credits. 
select courseID, Course-name, Department, credit
from courses 
where credit != 4;
-----8 Show the top 3 courses by credits in descending order.
select course_id, course_name, credits
from courses 
oder by credit desc
limt 3;
----9 Get the maximum, minimum, and average grade across all enrollments.
select max(grade) as max_grade,
      Min(grade) as min_grade, 
      avg(grade) as avg_grade
from enrollments;
----10 Count how many enrollments exist per course. 
select count(courseid) as enrollment_count, courseid
from enrollment
group by courseid;
-----11 Find total salary and total bonus per department. 
select sum(salary) as total_salary,
      sum(bonus) as total_bonus,
      department
from salary
group by department;
------12 Show departments where average salary is above 55,000. 
select avg(salary) as avg_salary, department
from salary
group by department
having avg(salary) > 55000;
----13  List employees whose salary plus bonus is greater than 60,000. 
select empolyee_id,
        name, 
        department, 
        salary, 
        bonus,
        (salary+bonus) as total_compensation
from salary 
where (salary+bonus) > 60000;
------14 Show total and average budget per department. Only include departments with average budget above 70,000. 
select sum(budget) as total_budget, avg(budget) as avg_budget, department
from project
group by departement
having avg(budget) > 70000;
-----15 List all projects with budgets between 50,000 and 120,000, excluding the Marketing department.
select project_id, project_name, department, budget
from project
where budgt between 50000 and 120000
And department Not 'marketing;
  


