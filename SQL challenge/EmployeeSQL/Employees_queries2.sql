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
Where extract(year from hire_date) = 1986

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