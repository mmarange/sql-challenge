# Duplicates

## Part 1

* How do you locate a duplicate record with one field? Using the table below, write a query to demonstrate.

  * Yarn table with duplicates:

    ![duplicated_yarn.png](Images/duplicated_yarn.png)

    ### Answer
    `SELECT`
      `yarn_name,`    
      `count(yarn_name)`
    `FROM` 
      `yarn_table`
    `GROUP BY `
     `yarn_name`
    `HAVING count(yarn_name) > 1`

## Part 2

* How do you find duplicate records using more than one field? Using the table from Part 1, write a query to demonstrate.

### Answer
  `SELECT`
      `yarn_name,` 
      `yarn_type,`   
      `count(*)`
    `FROM` 
      `yarn_table`
    `GROUP BY `
     `yarn_name`
     `,yarn_type`
    `HAVING count(*) > 1`