select * from gym.member;

use gym;

/*
In SQL, you can find the last ID in a table using the MAX function along with the column that represents the ID, Assuming you have 
an "id" column in your table, you can use the following query 


Thies query selects the maximum (largest) value in the "id" column and aliases it as "last_id". The result will be a  single row with the 
highest ID value in the specified table.alter



*/

# how do you find the last ID in a SQL table?
select max(id) as last_id from member;




