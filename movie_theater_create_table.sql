--Insert customers
INSERT INTO customers(
	first_name,
	last_name,
	email
) VALUES(
	'Boy',
	'Racer',
	'boy.racer@boyracer.com'
);

INSERT INTO customers(
	first_name,
	last_name,
	email
) VALUES(
	'YoYo',
	'Girl',
	'yoyo.girl.cat@yoyogirl.com'
);

--Insert movies info
INSERT INTO movies(
	movie_name,
	movie_time,
	movie_date,
	movie_price
)VALUES(
	'The Suicide Squad',
	'2:00PM',
	'8/08/21',
	7.99
);

INSERT INTO movies(
	movie_name,	
	movie_time,
	movie_date,
	movie_price
)VALUES(
	'Jungle Cruise',
	'9:00AM',
	'8/10/21',
	5.99
);


-- Insert info for ticket_orders
INSERT INTO ticket_orders(
	total_amount,
	payment_method,
	customer_id,
	movie_id
)VALUES(5.99,'Visa Card',2,2),(7.99, 'CASH', 1, 4);

--Insert concessions info
INSERT INTO concessions(
	item_name,
	item_price
)
VALUES('Gumball', 0.99), ('Soda', 1.99);

--Insert concession_orders
INSERT INTO concession_orders(
	total_amount,
	payment_method,
	customer_id,
	concession_id)
VALUES(1.99, 'CASH', 1, 3), (0.99, 'Master Card', 2, 2);

--Insert receipts
INSERT INTO receipts(
	customer_id,
	ticket_order_id,
	concession_order_id)
VALUES(
	1, 2, 3),(2, 1,2);


