-- Table - orders

-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(80),
  product_price INTEGER,
  quantity INTEGER
);

-- 2. Add 5 orders to the orders table.
-- 3. Make orders for at least two different people.
-- 4. person_id should be different for different people.

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (001, 'shorts', 20, 2);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (001, 'shoes', 10, 5);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (002, 'pants', 50, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (002, 'socks', 5, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (003, 'tops', 45, 4);

select * from orders;


-- 5. Select all the records from the orders table.

select * from orders
where product_name = 'records';


-- 6. Calculate the total number of products ordered.

select SUM(quantity) from orders;


-- 7. Calculate the total order price.

select COUNT(product_price) * SUM(quantity) from orders;

-- 8. Calculate the total order price by a single person_id.

select person_id, SUM(product_price * quantity) from orders
group by person_id;

-- from solutions:
-- SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;