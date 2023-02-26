INSERT INTO customer(
	first_name,
	last_name,
	phone_number, 
	address,
	email
)VALUES(
	'Lucas',
	'Lang',
	'123-123-1234',
	'1337 Temple Tr WI',
	'lucas@lang.com'
),(
	'Dylan',
	'Smith',
	'321-321-432',
	'123 Coding Circle Il',
	'Dylan@smith.com'
	
),(
	'Chad',
	'Nguyen',
	'888-888-8888',
	'123 Boston St Ma',
	'chadn458@gmail.com'
),(
	'Luam',
	'Gebremikael',
	'123-123-1234',
	'423 Fake st',
	'luamgebremikael@gmail.com'
);

CREATE OR REPLACE PROCEDURE insertCustomer(
    first_name VARCHAR(45),
	last_name VARCHAR(45),
	phone_number VARCHAR(45),
	address VARCHAR(255),
	email varchar(100)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO customer(
        first_name,
        last_name,
        phone_number,
        address,
        email
    ) VALUES (
        first_name,
        last_name,
        phone_number,
        address,
        email
    );
    COMMIT;
END;
$$

CALL insertCustomer()


INSERT INTO car(
	Serial_Number,
	Make,
	Model,
	Color,
	"Year",
	Sold_NotSold
	
)Values(
	'1',
	'Honda',
	'Civic',
	'Red',
	'2023',
	'NotSold'
),(
	'2',
	'Honda',
	'Civic',
	'Blue',
	'2023',
	'NotSold'
),(
	'3',
	'Honda',
	'Civic',
	'White',
	'2023',
	'NotSold'
),(
	'4',
	'Honda',
	'Civic',
	'Black',
	'2023',
	'NotSold'
),(
	'5',
	'Honda',
	'Civic',
	'Orange',
	'2023',
	'NotSold'
);

CREATE OR REPLACE PROCEDURE insertCar(
	Make VARCHAR(50),
	Model VARCHAR(50),
	Color VARCHAR(50),
	"Year" INTEGER,
	Sold_NotSold VARCHAR(50),
	new_or_used VARCHAR(50)
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO Car(
		Make,
		Model,
		Color,
		"Year",
		Sold_NotSold,
		new_or_used
	) VALUES (
		Make,
		Model,
		Color,
		"Year",
		Sold_NotSold,
		new_or_used
	);
	COMMIT;
END;
$$

CALL insertCar('Honda','CRV','White','2023','NotSold','New')
CALL insertCar('Honda','CRV','Black','2023','NotSold','New')
CALL insertCar('Honda','CRV','White','2023','NotSold','New')
CALL insertCar('Honda','CRV','White','2023','Sold','New')
CALL insertCar('Honda','CRV','White','2023','Sold','New')

UPDATE Car
SET price = 'MSRP'
WHERE car_id BETWEEN 1 AND 10;

UPDATE Car
SET serial_number = car_id + 100
WHERE car_id BETWEEN 1 AND 15;

SELECT *
FROM car;

CREATE OR REPLACE PROCEDURE create_sales_invoice(
	invoice_date TIMESTAMP,
    car_id INTEGER,
    customer_id INTEGER,
    salesperson_id INTEGER
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO Sales_Invoice(
		invoice_date,
		Car_id,
		Customer_id,
	    Salesperson_id
	) VALUES (
		invoice_date,
		car_id,
		customer_id,
	    salesperson_id
	);
	COMMIT;
END;
$$

CALL create_sales_invoice('2023-02-24 12:00:00', 1, 1, 1);
CALL create_sales_invoice('2023-02-24 12:00:00', 2, 2, 2);

SELECT *
FROM sales_invoice;

SELECT *
FROM car;


CALL insertCar('BMW','m3','Blue','2020','Sold','Used')


UPDATE Car
SET sold_notsold = 'Sold'
WHERE car_id BETWEEN 1 AND 2;


INSERT INTO Service_Ticket (
	Car_id,
	Customer_id,
	Date_Serviced,
	COMMENTS,
	Date_Returned
)VALUES(
	3,
	4,
	'2023-01-01',
	'Oil change and tire rotation',
	'2023-01-01'
);

INSERT INTO Service_Ticket (
	Car_id,
	Customer_id,
	Date_Serviced,
	COMMENTS,
	Date_Returned
)VALUES(
	2,
	1,
	'2023-02-01',
	'Oil change',
	'2023-02-01'
);
	





