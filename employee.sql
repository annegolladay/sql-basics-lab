-- Table - employee
-- Create a file called employee.sql and write out the code for the following problems:

-- 1. List all employee first and last names only that live in Calgary.

select first_name, last_name from employee
where city = 'Calgary';


-- 2. Find the birthdate for the youngest employee.

select MAX(birth_date) from employee;


-- 3. Find the birthdate for the oldest employee.

select MIN(birth_date) from employee;


-- 4. Find everyone that reports to Nancy Edwards (Use the ReportsTo column). * You will need to query the employee table to find the Id for Nancy Edwards

select employee_id from employee
where first_name = 'Nancy' AND last_name = 'Edwards';

select * from employee
where reports_to = 2;


-- 5. Count how many people live in Lethbridge.

select COUNT(city) from employee
where city = 'Lethbridge';