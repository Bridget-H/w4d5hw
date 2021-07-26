INSERT INTO customer(
    customer_id,
    car_id, 
    first_name,
    last_name, 
    address,
    billing,
    email,
    phone
) VALUES(
	1,
    1, 
    John,
    Doe, 
    123 Fake St,
    123 Fake St,
    JohnDoe@aol.com,
    555-123-1234
);

INSERT INTO customer(
	customer_id,
    car_id, 
    first_name,
    last_name, 
    address,
    billing,
    email,
    phone
) VALUES(
	2,
    2, 
    Jane,
    Smith, 
    321 Real St,
    321 Real St,
    JaneSmithe@yahoo.com,
    555-555-1234
);

INSERT INTO car_service_ticket(
	service_ticket_id,
    customer_id,
    car_id,
    staff_id,
    part_id,
    service_id,
    completed
) VALUES(
	1,
    1,
    1,
    1,
    1,
    1,
    True
);

INSERT INTO car_service_ticket(
	service_ticket_id,
    customer_id,
    car_id,
    staff_id,
    part_id,
    service_id,
    completed
) VALUES(
	2,
    2,
    2,
    2,
    2,
    2,
    False
);

INSERT INTO mechanic_services(
	service_id,
    service_price,
    staff_id,
    part_id,
    service_name
) VALUES(
	1,
    50.99,
    1,
    1,
    oil change
);

INSERT INTO mechanic_services(
	service_id,
    service_price,
    staff_id,
    part_id,
    service_name
) VALUES(
	2,
    200.00,
    2,
    2,
    windheild instalation
);

INSERT INTO car_inventory(
	car_id,
    make,
    model,
    year,
    millage,
    tuneup,
    purchase_car,
    service_car,
    customer_id,
    car_price
) VALUES(
	1,
    Toyota,
    Prius,
    2020,
    30000,
    2020,
    True,
    Flase,
    1,
    20000.00
);

INSERT INTO car_inventory(
	car_id,
    make,
    model,
    year,
    millage,
    tuneup,
    purchase_car,
    service_car,
    customer_id,
    car_price
) VALUES(
	2,
    Jeep,
    Rangler,
    2004,
    200000,
    2010,
    False,
    True,
    2,
    0
);

INSERT INTO parts(
	part_id,
    part_name,
    car_id,
    part_price
) VALUES(
	1,
    synthetic oil,
    3,
    1.99
);

INSERT INTO parts(
	part_id,
    part_name,
    car_id,
    part_price
) VALUES(
	2,
    Windsheild,
    2,
    100.99
);

INSERT INTO staff(
	staff_id,
    first_name,
    last_name,
    staff_type
) VALUES(
	1,
    Imma,
    Rippyewoff,
    sales
);


INSERT INTO staff(
	staff_id,
    first_name,
    last_name,
    staff_type
) VALUES(
	2,
    Fred,
    Fix,
    Mechanic
);

INSERT INTO service_history(
	service_history_id,
    invoice_id,
    customer_id,
    car_id
) VALUES(
	3,
    3,
    3,
    3
);

INSERT INTO service_history(
	service_history_id,
    invoice_id,
    customer_id,
    car_id
) VALUES(
	2,
    2,
    2,
    2
);

INSERT INTO invoice(
	invoice_id,
    service_ticket_id,
    customer_id,
    car_id,
    car_price,
    service_price,
    part_price,
    invoice_total,
    invoice_paid,
    service_id,
    staff_id
) VALUES(
	1,
    1,
    1,
    1,
    20000.00,
    0,
    0,
    20000.00,
    True,
    0,
    1
);

INSERT INTO invoice(
	invoice_id,
    service_ticket_id,
    customer_id,
    car_id,
    car_price,
    service_price,
    part_price,
    invoice_total,
    invoice_paid,
    service_id,
    staff_id
) VALUES(
	2,
    2,
    2,
    2,
    0.00,
    200.00,
    100.99,
    300.99,
    False,
    2,
    2
);