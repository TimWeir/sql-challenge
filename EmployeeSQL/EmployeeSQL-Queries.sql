--Data Analysis
--#1
select employees.emp_no, employees.last_name, employees.first_name, salaries.salary
from employees
left join salaries
on salaries.emp_no = employees.emp_no;

--#2
select employees.first_name, employees.last_name, employees.hire_date
from employees
where date_part('year',hire_date) = 1986

--#3
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
left join departments
on dept_manager.dept_no = departments.dept_no
left join employees
on employees.emp_no = dept_manager.emp_no;

--#4
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no;

--#5
select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

--#6
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name like 'Sales';

--#7
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name like 'Sales' or departments.dept_name like 'Development';

--#8
select employees.last_name, count(*) as name_count
from employees
group by employees.last_name
order by name_count desc;
