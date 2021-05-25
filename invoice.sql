-- Table - invoice
-- Create a file called invoice.sql and write out the code for the following problems:

-- 1. Count how many orders were made from the USA.

select * from invoice
where billing_country = 'USA';


-- 2. Find the largest order total amount.

select MAX(total) from invoice;


-- 3. Find the smallest order total amount.

select MIN(total) from invoice;


-- 4. Find all orders bigger than $5.

select * from invoice
where total > 5;


-- 5. Count how many orders were smaller than $5.

select COUNT(total) from invoice
where total < 5;


-- 6. Count how many orders were in CA, TX, or AZ (use IN).
select COUNT(total) from invoice
where billing_state IN ('CA', 'TX', 'AZ');

-- OR

select COUNT(*) from invoice 
where billing_state in ('CA', 'TX', 'AZ');


-- 7. Get the average total of the orders.

select AVG(total) from invoice;


-- 8. Get the total sum of the orders.

select SUM(total) from invoice;


-- 9. Update the invoice with an invoice_id of 5 to have a total order amount of 24.

UPDATE invoice
SET total = 24
where invoice_id = 5;


-- 10. Delete the invoice with an invoice_id of 1.

DELETE from invoice
where invoice_id = 1;