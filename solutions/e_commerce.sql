CREATE TABLE users(
	id SERIAL PRIMARY KEY,
  name VARCHAR(30)
);

CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  price INT
  );
  
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  product_id INT REFERENCES products(id)
);



-- INSERT INTO users (name)
-- VALUES ('John'),('Frank'),('Sue');

-- INSERT INTO products (name, price)
-- VALUES ('boat', 2500),('tank', 5000),('car', 2000);

-- INSERT INTO orders (product_id)
-- VALUES (1),(2),(3);


SELECT * 
FROM orders o
JOIN products p ON p.id = o.product_id
ORDER BY p.id ASC LIMIT 1;


SELECT * FROM orders;



SELECT sum(p.price)
FROM orders o
JOIN products p ON p.id = o.product_id
WHERE o.id = 1