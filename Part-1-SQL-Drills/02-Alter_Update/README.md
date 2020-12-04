# Alter vs. Update


## Part 1

* Explain the difference between `alter` and `update` in SQL statements.
### Answer
`Alter` changes the structure and properties of `Tables` and `Views`, whereas `Update` changes the records in `Tables` and `Views`

### Part 2

* You are given the following table:

  ![Images/alter_update01.png](Images/alter_update01.png)

* Change the name of the column from `department_id` to `dept_id`.
### Answer

`ALTER TABLE table_name`
`RENAME COLUMN department_id TO dept_id;`

* Add a column named `annual_salary` to the table.
### Answer

`ALTER TABLE table_name`
`ADD COLUMN annual_salary VARCHAR;`

