-- Catelog

-- How many employees do we have?
select count(employee_id) as 'the number of employees' from employees;

-- How many countries that the company is doing business?
select count(country_id) as 'the number of countries' from countries;

-- How many departments do we have?
select count(department_id) as 'the number of department' from departments;

-- How many jobs do we have?
select count(job_id) as 'the number of job' from jobs;

-- How many locations of the departments of the company do we have?
select count(location_id) as 'the number of location' from locations;

-- How many locations are in thd US?
select count(location_id) as 'the number of location in Us' from locations where country_id = 'US';

-- What are the city and state they locate? 
select 
location_id as 'location id',
city as 'city',
state_province as 'state', country_id as 'country'
from locations where country_id = 'US';

-- List the employees that are in executive department.
select 
employee_id as 'employee id',
first_name as 'first name', last_name as 'last name',
concat(last_name, ', ', first_name) as 'Employee name'
from employees where department_id = '9';

-- what the average salaries among the employees who are in executive department?
select format(avg(salary), '2') as 'average salary for executive department'
from employees 
where department_id = '9';


--  List the employees that are in IT department.
select 
employee_id as 'employee id',
first_name as 'first name', last_name as 'last name',
concat(last_name, ', ', first_name) as 'Employee name'
from employees
join departments on employees.department_id = departments.department_id
where departments.department_id = '6';

-- what the average salaries among the employees who are in IT department?
select format(avg(salary), '2') as 'average salary for IT department'
from employees 
where department_id = '6';


-- what the average salaries among the employees who are in executive department?
select 
employee_id as 'employee id',
first_name as 'first name', last_name as 'last name',
concat(last_name, ', ', first_name) as 'Employee name'
from employees
join departments on employees.department_id = departments.department_id
where departments.department_id = '9';

-- what the average salaries among the employees who are in purchasing department?
select format(avg(salary), '2') as 'average salary purchasing department'
from employees 
where department_id = '3';


-- what the average salaries among the employees who are in finance department?
select 
first_name as 'first name', last_name as 'last name',
concat(last_name, ', ', first_name) as 'Employee name'
from employees
join departments on employees.department_id = departments.department_id
where departments.department_id = '10';

-- what the average salaries among the employees who are in finance department?
select format(avg(salary), '2') as 'average salary for finance department'
from employees 
where department_id = '10';

-- use date format for hire date and make it desc.
select date_format(hire_date,'%Y-%m-%d') as 'hire time', salary as 'salary'
from employees 
order by 1 desc; 

-- what's the amount of salary that employees getting?
Select employees.salary,departments.department_name as 'department name'
from employees
join departments on employees.department_id=departments.department_id;

-- what's the amount of salary that IT employees getting?
Select employees.salary,departments.department_name as 'department name'
from employees
join departments on employees.department_id=departments.department_id
where departments.department_name='IT';

-- What's our highest salary?
select  format(max(salary), 2) as 'Our Highest Salary' from employees;

-- How many departments type do we have?
SELECT departments.department_id as 'Department type', count(employees.employee_id) as 'No of Employees'
FROM employees
join departments on employees.department_id=departments.department_id
GROUP by departments.department_id;




