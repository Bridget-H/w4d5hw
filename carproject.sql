CREATE TABLE `customer` (
  `customer_id` SERIAL,
  `car_id` INTEGER,
  `first_name` VARCHAR(50),
  `last_name` VARCHAR(50),
  `address` VARCHAR(200),
  `billing` VARCHAR(200),
  `email` VARCHAR(100),
  `phone` VARCHAR(20),
  KEY `Primary Key` (`customer_id`),
  KEY `Foreign key` (`car_id`)
);

CREATE TABLE `car_service_ticket` (
  `service_ticket_id` SERIAL,
  `customer_id` INTEGER,
  `car_id` INTEGER,
  `staff_id` INTEGER,
  `part_id` INTEGER,
  `service_id` INTEGER,
  `completed` BOOLEAN,
  KEY `Primary Key` (`service_ticket_id`),
  KEY `Foreign key` (`customer_id`, `car_id`, `staff_id`, `part_id`, `service_id`)
);

CREATE TABLE `mechanic_services` (
  `service_id` SERIAL,
  `service_price` NUMERIC(8,2),
  `staff_id` INTEGER,
  `part_id` INTEGER,
  `service_name` VARCHAR(100),
  KEY `Primary Key` (`service_id`),
  KEY `Foriegn Key` (`staff_id`, `part_id`)
);

CREATE TABLE `car_inventory` (
  `car_id` SERIAL,
  `make` VARCHAR(20),
  `model` VARCHAR(30),
  `year` VARCHAR(4),
  `millage` INTEGER,
  `tuneup` DATE,
  `purchase_car` BOOLEAN,
  `service_car` BOOLEAN,
  `customer_id` INTEGER,
  `car_price` NUMERIC(8,2),
  KEY `Primary Key` (`car_id`),
  KEY `Foreign Key` (`customer_id`)
);

CREATE TABLE `parts` (
  `part_id` SERIAL,
  `part_name` VARCHAR(50),
  `car_id` INTEGER,
  `part_price` NUMERIC(8,2),
  `service_ticket_id` INTEGER,
  KEY `Primary Key` (`part_id`),
  KEY `Foriegn Key` (`car_id`, `service_ticket_id`)
);

CREATE TABLE `staff` (
  `staff_id` SERIAL,
  `first_name` VARCHAR(50),
  `last_name` VARCHAR(50),
  `staff_type` VARCHAR(10),
  KEY `Primary Key` (`staff_id`)
);

CREATE TABLE `service_history` (
  `service_history_id` SERIAL,
  `invoice_id` INTEGER,
  `customer_id` INTEGER,
  `car_id` INTEGER,
  KEY `Primary Key` (`service_history_id`),
  KEY `Forgein` (`invoice_id`),
  KEY `Forgein Key` (`customer_id`, `car_id`)
);

CREATE TABLE `invoice` (
  `invoice_id` SERIAL,
  `service_ticket_id` INTEGER,
  `customer_id` INTEGER,
  `car_id` INTEGER,
  `car_price` NUMERIC(8,2),
  `service_price` NUMERIC(8,2),
  `part_price` NUMERIC(8,2),
  `invoice_total` NUMERIC(11,2),
  `invoice_paid` BOOLEAN,
  `service_id` INTEGER,
  `staff_id` INTEGER,
  KEY `Primary Key` (`invoice_id`),
  KEY `Foreign Key` (`service_ticket_id`, `customer_id`, `car_id`, `car_price`, `service_price`, `part_price`, `invoice_total`, `service_id`, `staff_id`)
);