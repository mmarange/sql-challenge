# SQL Joins

## Part 1

* Describe the different types of join clauses supported in SQL.
### Answer
* Inner Join - This is used to merge two tables and retains records that exist in both tables at the point of joining/intersection
* Full join - This is used to merge two tables and retains all records from both tables
* Left join - This is used to merge two tables and retains all records from the first table and only records from the second table that exist at the point of intersection/joining
* Righ join -This is used to merge two tables and retains all records from the second table and only records from the first table that exist at the point of intersection/joining

## Part 2

* Consider the following tables:

  * vendor_table
  ![vendor_table.png](Images/vendor_table.png)

  * yarn_table
  ![yarn_table.png](Images/yarn_table.png)

* Which join was used to create the final view below?

  ![table_join.png](Images/table_join.png)

### Answer
A left join was used with the vendor table as the left table and the yarn table as the right table. Joining was on `id` in the vendor table and `vendor_id` in the yarn table