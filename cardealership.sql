
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45),
	last_name VARCHAR(45),
	phone_number VARCHAR(45),
	address VARCHAR(255),
	email varchar(100)
);

SELECT *
FROM customer;

CREATE TABLE Car(
	Car_id SERIAL PRIMARY KEY,
	Serial_Number INTEGER,
	Make VARCHAR(45),
	Model Varchar(45),
	Color VARCHAR(45),
	"Year" VARCHAR(45),
	Sold_NotSold Varchar(45)
);

ALTER TABLE Car
ADD Price VARCHAR(100);

UPDATE Car
SET New_or_used = 'New'
WHERE serial_number = '5'

SELECT *
FROM car;


CREATE TABLE Sales_Invoice(
	Invoice_id SERIAL PRIMARY KEY,
	invoice_date timestamp,
	Car_id INTEGER,
	Customer_id INTEGER,
	Salesperson_id INTEGER,
	FOREIGN KEY(Salesperson_id) REFERENCES Salesperson(Salesperson_id),
	FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id),
	FOREIGN KEY(Car_id) REFERENCES Car(Car_id)
	
);

SELECT *
FROM sales_invoice;


CREATE TABLE Salesperson(
	Salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45),
	last_name VARCHAR(45)
);

INSERT INTO Salesperson (
    first_name,
    last_name
) VALUES (
    'John',
    'Doe'
), (
    'Jane',
    'Doe'
);

SELECT *
FROM salesperson;


CREATE TABLE Service_Ticket(
	Service_ticket_id SERIAL PRIMARY KEY,
	Car_id INTEGER,
	Customer_id INTEGER,
	Date_Serviced INTEGER,
	COMMENTS TEXT,
	Date_Returned INTEGER,
	Service_id INTEGER,
	FOREIGN KEY(Customer_id) REFERENCES customer(Customer_id),
	FOREIGN KEY(Service_id) REFERENCES Service(Service_id),
	FOREIGN KEY(Car_id) REFERENCES Car(Car_id)
	
);

ALTER TABLE Service_Ticket
ALTER COLUMN Date_Serviced TYPE VARCHAR(100);

ALTER TABLE Service_Ticket
ALTER COLUMN Date_Returned TYPE VARCHAR(100);



CREATE TABLE Service(
	Service_id SERIAL PRIMARY KEY,
	Service_name VARCHAR(100),
	Cost float,
	Mechanic_id INTEGER,
	FOREIGN KEY(Mechanic_id) REFERENCES Mechanic(Mechanic_id)
);


CREATE TABLE Mechanic(
	Mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45),
	last_name VARCHAR(45)
);

INSERT INTO Mechanic(
    first_name,
    last_name
) VALUES (
    'Bob',
    'TheBuilder'
), (
    'Billy',
    'Bob'
);







