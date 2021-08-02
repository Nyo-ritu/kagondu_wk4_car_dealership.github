CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "email" VARCHAR(50),
  "contact_number" VARCHAR(20)
);

SELECT *
FROM "mechanic";

CREATE TABLE "car" (
  "car_id" SERIAL PRIMARY KEY,
  "manf_year" NUMERIC(4),
  "make" VARCHAR(20),
  "model" VARCHAR(20),
  "color" VARCHAR(20),
  "is_new" BOOLEAN,
  "previous_owner" INTEGER,
  "mileage" NUMERIC(7,1),
  "in_stock" BOOLEAN,
  "price" NUMERIC(8,2)
);

SELECT *
FROM "car";

CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "email" VARCHAR(50),
  "contact_number" VARCHAR(20)
);

SELECT *
FROM "salesperson";

CREATE TABLE "parts" (
  "part_id" SERIAL PRIMARY KEY,
  "part_name" VARCHAR(25),
  "brand" VARCHAR(25),
  "supplier" VARCHAR(50),
  "stock" INTEGER,
  "inv_location" VARCHAR(10),
  "part_cost" NUMERIC(6,2)
);

SELECT *
FROM "parts";

CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "address" VARCHAR(100),
  "email" VARCHAR(25),
  "contact_number" VARCHAR(50),
  "billing_info" VARCHAR(50)
);

SELECT *
FROM "customer";

CREATE TABLE "invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "salesperson_id" INTEGER,
  "final_price" NUMERIC(8,2),
  "invoice_date" TIMESTAMP,
 	FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id"),
 	FOREIGN KEY ("salesperson_id") REFERENCES "salesperson"("salesperson_id"),
 	FOREIGN KEY ("car_id") REFERENCES "car"("car_id")
);

SELECT *
FROM "invoice";

CREATE TABLE "serviceTicket" (
  "service_id" SERIAL PRIMARY KEY,
  "car_id" INTEGER,
  "customer_id" INTEGER,
  "mechanic_id" INTEGER,
  "part_id" INTEGER,
  "price" NUMERIC(7,2),
  "description" VARCHAR(100),
  "repair_date" TIMESTAMP,
 	FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id"),
  	FOREIGN KEY ("mechanic_id") REFERENCES "mechanic"("mechanic_id"),
    FOREIGN KEY ("part_id") REFERENCES "parts"("part_id"),
  	FOREIGN KEY ("car_id") REFERENCES "car"("car_id")
);

SELECT *
FROM "serviceTicket";

---Inserting Data into tables
INSERT INTO "customer"(
	customer_id,
	first_name,
	last_name,
	address,
	email,
	contact_number,
	billing_info			
)VALUES(
	1,
	'Jonny',
	'Ringo',
	'555 tombstone wild west',
	'jr@gmail.com',
	'555-999-4444',
	'654-222-333-111-111'
);

INSERT INTO "customer"(
	customer_id,
	first_name,
	last_name,
	address,
	email,
	contact_number,
	billing_info			
)VALUES(
	2,
	'Butch',
	'Cassidy',
	'444 tombstone wild west',
	'bc@gmail.com',
	'777-999-3333',
	'321-999-897-153-753'
);

INSERT INTO "customer"(
	customer_id,
	first_name,
	last_name,
	address,
	email,
	contact_number,
	billing_info			
)VALUES(
	3,
	'Jesse',
	'James',
	'953 OK Coral wild west',
	'jj@gmail.com',
	'852-456-2222',
	'753-489-637-853-789'
);

SELECT *
FROM "customer";

INSERT INTO "salesperson"(
	salesperson_id,
	first_name,
	last_name,
	email,
	contact_number
	
)VALUES(
	2,
	'Tom',
	'Tomson',
	'tt@gmail.com',
	'564-852-258'
);

INSERT INTO "salesperson"(
	salesperson_id,
	first_name,
	last_name,
	email,
	contact_number
	
)VALUES(
	1,
	'James',
	'Bubaloo',
	'jb@gmail.com',
	'569-213-785'
);

INSERT INTO "salesperson"(
	salesperson_id,
	first_name,
	last_name,
	email,
	contact_number
	
)VALUES(
	3,
	'Ooooooo',
	'Kaaaaaay',
	'ok@gmail.com',
	'741-258-423'
);

SELECT *
FROM "salesperson";

INSERT INTO "car"(
	car_id,
	manf_year,
	make,
	model,
	color,
	is_new,
	previous_owner,
	mileage,
	in_stock,
	price
)VALUES(
	546,
	'2020',
	'Porche',
	'911 TURBO',
	'Pink',
	FALSE,
	'1',
	'6500',
	TRUE,
	'45000'
);

INSERT INTO "car"(
	car_id,
	manf_year,
	make,
	model,
	color,
	is_new,
	previous_owner,
	mileage,
	in_stock,
	price
)VALUES(
	220,
	'2021',
	'Lincoln',
	'Navigator',
	'Green',
	TRUE,
	'0',
	'21',
	TRUE,
	'62500'
);

INSERT INTO "car"(
	car_id,
	manf_year,
	make,
	model,
	color,
	is_new,
	previous_owner,
	mileage,
	in_stock,
	price
)VALUES(
	213,
	'2021',
	'Tesla',
	'Model X',
	'Blue',
	TRUE,
	'0',
	'2',
	TRUE,
	'98600'
);

INSERT INTO "car"(
	car_id,
	manf_year,
	make,
	model,
	color,
	is_new,
	previous_owner,
	mileage,
	in_stock,
	price
)VALUES(
	824,
	'2012',
	'BMW',
	'X5',
	'Silver',
	FALSE,
	'2',
	'8430',
	TRUE,
	'19500'
);


SELECT *
FROM "car";

INSERT INTO "invoice" (
	invoice_id,
	customer_id,
	car_id,
	salesperson_id,
	final_price,
	invoice_date
)VALUES(
	25,
	'2',
	'546',
	'3',
	'41200',
	'2021\05\14'
);

INSERT INTO "invoice" (
	invoice_id,
	customer_id,
	car_id,
	salesperson_id,
	final_price,
	invoice_date
)VALUES(
	12,
	'1',
	'213',
	'2',
	'99800',
	'2021\07\19'
);

INSERT INTO "invoice" (
	invoice_id,
	customer_id,
	car_id,
	salesperson_id,
	final_price,
	invoice_date
)VALUES(
	68,
	'3',
	'824',
	'1',
	'17465',
	'2021\03\25'
);

INSERT INTO "invoice" (
	invoice_id,
	customer_id,
	car_id,
	salesperson_id,
	final_price,
	invoice_date
)VALUES(
	69,
	'3',
	'220',
	'1',
	'59000',
	'2021\04\20'
);

SELECT *
FROM "invoice";

INSERT INTO "parts"(
	part_id,
	part_name,
	brand,
	supplier,
	stock,
	inv_location,
	part_cost

)VALUES(
	45,
	'wheel_locks',
	'michelin',
	'East Coast wheels',
	'85',
	'Shelf 13-b',
	'30'
);

INSERT INTO "parts"(
	part_id,
	part_name,
	brand,
	supplier,
	stock,
	inv_location,
	part_cost

)VALUES(
	627,
	'spoiler',
	'FastnFurious',
	'Virginia Ballers',
	'16',
	'Shelf 5-d',
	'355'
);

INSERT INTO "parts"(
	part_id,
	part_name,
	brand,
	supplier,
	stock,
	inv_location,
	part_cost

)VALUES(
	18,
	'Wiper fluid',
	'Kleenex',
	'Walmart',
	'90',
	'Shelf 2-a',
	'10'
);

INSERT INTO "parts"(
	part_id,
	part_name,
	brand,
	supplier,
	stock,
	inv_location,
	part_cost

)VALUES(
	0,
	'Full Detail',
	'Dealer',
	'Dealer',
	'20',
	'None',
	'20'
);

SELECT *
FROM parts;

INSERT INTO "mechanic"(
	Mechanic_id,
	first_name,
	last_name,
	email,
	contact_number
)VALUES(
	8,
	'Moe',
	'Sanders',
	'ms.gmail.com',
	'654-789-258'
);

SELECT *
FROM "mechanic";

INSERT INTO "mechanic"(
	Mechanic_id,
	first_name,
	last_name,
	email,
	contact_number
)VALUES(
	4,
	'Halley',
	'Becket',
	'hb.gmail.com',
	'653-489-2465'
);

INSERT INTO "mechanic"(
	Mechanic_id,
	first_name,
	last_name,
	email,
	contact_number
)VALUES(
	7,
	'Andrew',
	'Anderson',
	'aa.gmail.com',
	'785-254-659'
);

SELECT *
FROM "mechanic";

INSERT INTO "serviceTicket"(
	service_id,
	car_id,
	customer_id,
	mechanic_id,
	part_id,
	price,
	description,
	repair_date
)VALUES(
	42,
	'220',
	'1',
	'8',
	'627',
	'60',
	'Customer wanted a spoiler on his Lincoln Navigator',
	'2021\07\20'
);

INSERT INTO "serviceTicket"(
	service_id,
	car_id,
	customer_id,
	mechanic_id,
	part_id,
	price,
	description,
	repair_date
)VALUES(
	15,
	'213',
	'2',
	'7',
	'45',
	'15',
	'Customer wanted wheel locks on his Tesla',
	'2021\07\22'
);

INSERT INTO "serviceTicket"(
	service_id,
	car_id,
	customer_id,
	mechanic_id,
	part_id,
	price,
	description,
	repair_date
)VALUES(
	11,
	'824',
	'3',
	'4',
	'18',
	'5',
	'Showed customer how to add wiper fluid',
	'2021\07\25'
);

INSERT INTO "serviceTicket"(
	service_id,
	car_id,
	customer_id,
	mechanic_id,
	part_id,
	price,
	description,
	repair_date
)VALUES(
	5,
	'546',
	'2',
	'4',
	'0',
	'0',
	'Full Detail',
	'2021\05\14'
);

-- Stored Procedure: updating database - Finance informs salesteam that they forgot to add 
-- times to their invoices and that they need to update them. 

CREATE OR REPLACE PROCEDURE time_update(
	transaction_id INTEGER,
	time_update Timestamp
)
LANGUAGE plpgsql
AS $$
BEGIN
	-- Change timestamp
	UPDATE invoice
	SET invoice_date = time_update
	WHERE invoice_id = transaction_id; 
	
	-- Commit the above statement inside of a transaction
	COMMIT;
	
END;
$$;

-- Calling a Stored Procedure to change time on invoice
CALL time_update(12, '2021\07\19 15:30:00');
-- Calling a Stored Procedure to change time on invoice
CALL time_update(68, '2021\03\25 09:15:00');
-- Calling a Stored Procedure to change time on invoice
CALL time_update(69, '2021\04\20 19:45:00');
-- Calling a Stored Procedure to change time on invoice
CALL time_update(12, '2021\07\19 18:05:00');

-- Check updates

SELECT *
FROM "invoice";


--"Finance then informs the mechanics team and does the same for service tickets" (no need to replicate, same process..)
-- DROP PROCEDURE time_update;

-- Stored function. Add a new Salesperson to the Salesteam

CREATE OR REPLACE FUNCTION add_salesperson(
	_salesperson_id INTEGER,
	_first_name VARCHAR,
	_last_name VARCHAR,
	_email VARCHAR,
	_contact_number VARCHAR
)
RETURNS void
AS $$
BEGIN
	INSERT INTO salesperson(salesperson_id, first_name, last_name, email, contact_number)
	VALUES(_salesperson_id, _first_name, _last_name, _email, _contact_number);
END;
$$
LANGUAGE plpgsql;


-- Calling the function to add a salesperson
SELECT add_salesperson(16, 'Kelly', 'Buyaka', 'kb.gmail.com', '658-124-456');

-- Calling the function to add another salesperson
SELECT add_salesperson(28, 'Carl', 'Ganesh', 'cg.gmail.com', '856-497-245');

-- Check updates are there. 
SELECT *
FROM "salesperson";

-- Stored function. Add a new Mechanic to the Service team

CREATE OR REPLACE FUNCTION add_mechanic(
	__mechanic_id INTEGER,
	__first_name VARCHAR,
	__last_name VARCHAR,
	__email VARCHAR,
	__contact_number VARCHAR
)
RETURNS void
AS $$
BEGIN
	INSERT INTO mechanic(mechanic_id, first_name, last_name, email, contact_number)
	VALUES(__mechanic_id, __first_name, __last_name, __email, __contact_number);
END;
$$
LANGUAGE plpgsql;

-- Calling the function to add a mechanic
SELECT add_mechanic(13, 'Joey', 'Xavier', 'jx.gmail.com', '456-813-976');

-- Calling the function to add another mechanic
SELECT add_mechanic(32, 'Teresa', 'Pewar', 'tp.gmail.com', '694-753-951');

-- Check updates are there. 
SELECT *
FROM "mechanic";
