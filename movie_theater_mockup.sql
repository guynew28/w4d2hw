-- Create customers table
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	fist_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50)
);

--Alter column name from fist_name to first_name
ALTER TABLE customers
RENAME COLUMN fist_name TO first_name;

-- Creat movies table
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50),
	movie_time VARCHAR(10),	
	movie_date VARCHAR(10),
	movie_price NUMERIC(8,2)	
);

--Create ticket_orders
	CREATE TABLE ticket_orders(
	ticket_order_id SERIAL PRIMARY KEY,
	purchase_date DATE DEFAULT CURRENT_DATE,
	total_amount NUMERIC(8,2),
	payment_method VARCHAR(20),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
	);

--Create concessions table
	CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	item_name VARCHAR(30),
	item_price NUMERIC(8,2)
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

ALTER TABLE concessions
DROP COLUMN customer_id;


--Create concession_orders table
	CREATE TABLE concession_orders(
	concession_order_id SERIAL PRIMARY KEY,
	purchase_date DATE DEFAULT CURRENT_DATE,
	total_amount NUMERIC(8,2),
	payment_method VARCHAR(20),
	customer_id INTEGER NOT NULL,
	concession_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(concession_id) REFERENCES concessions(concession_id)
	);

--Create receipts table
	CREATE TABLE receipts(
	receipt_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	ticket_order_id INTEGER NOT NULL,
	concession_order_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(ticket_order_id) REFERENCES ticket_orders(ticket_order_id),
	FOREIGN KEY(concession_order_id) REFERENCES concession_orders(concession_order_id)
);



