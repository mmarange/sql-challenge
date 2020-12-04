/* 
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
*/

Select
	emp_no AS "employee number"
	,last_name
	,first_name
	,sex
	,salary
From
	employees e
Inner join salaries
	using(emp_no);

/*
2. List first name, last name, and hire date for employees who were hired in 1986
*/
Select
	first_name
	,last_name
	,hire_date
From
	employees
Where extract(year from hire_date) = 1986;

/*
3. List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name
*/
Select
	 dept_no
	,dept_name
	,emp_no AS "employee number"
	,last_name
	,first_name
From
	dept_manager
left join employees
	using(emp_no)
inner join departments
	using(dept_no);

/*
4. List the department of each employee with the following information:
employee number, last name, first name, and department name.
*/

Select
	 emp_no AS "employee number"
	,last_name
	,first_name
	,dept_name
From
	employees
inner join dept_emp
	using(emp_no)
inner join departments
	using(dept_no);

/*
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
*/
Select
	 first_name
	 ,last_name
	 ,sex
From
	employees
Where first_name = 'Hercules'
And last_name like 'B%';

/*
6. List all employees in the Sales department, 
including their employee number, last name, first name, and department name.
*/
Select 
	emp_no AS "employee number"
	,last_name
	,first_name
	,dept_name
From
	employees e
Inner join dept_emp de
	using(emp_no)
Inner join departments d
	using(dept_no)
Where
	dept_name = 'Sales';
	
/*
7. List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name.
*/
Select 
	emp_no AS "employee number"
	,last_name
	,first_name
	,dept_name
From
	employees e
Inner join dept_emp de
	using(emp_no)
Inner join departments d
	using(dept_no)
Where
	dept_name = 'Sales'
	Or dept_name = 'Development';

/*
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
*/
Select
	last_name as Unique_last_name
	,count(last_name) as Count
	
From
	employees
Group by last_name
Order by Count DESC;


Drop View employees_db
Create View employees_db AS
Select
	  emp_no
	 ,last_name
	 ,first_name
	 ,sex
	 ,title
	 ,salary
From
	employees e
full join salaries s
	using(emp_no)
full join titles t
	On (e.emp_title_id = t.title_id);
	
--Select from view  employees_db
Select 
	  emp_no
	 ,last_name
	 ,first_name
	 ,sex
	 ,title
	 ,salary
From
	employees_db;
	
	
-- My employee record
select * from employees where emp_no = '499942'