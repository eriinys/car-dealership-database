CREATE database car_dealership;

CREATE TABLE dealerships (
dealership_id int auto_increment,
name varchar(50),
address varchar(50),
phone varchar(12),
PRIMARY KEY (dealership_id)
);

CREATE TABLE vehicles (
VIN varchar(17) NOT NULL,
make varchar (20),
color varchar (10),
`year` year,
price decimal(10, 2),
SOLD varchar(10),
PRIMARY KEY (VIN)
);

CREATE TABLE inventory (
dealership_id int,
VIN varchar(17),
PRIMARY KEY (dealership_id, VIN),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id)
);

CREATE TABLE sales_contracts (
sales_id int auto_increment NOT NULL,
VIN varchar(17) NOT NULL,
PRIMARY KEY (sales_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE lease_contracts (
lease_id int auto_increment NOT NULL,
VIN varchar(17) NOT NULL,
PRIMARY KEY (lease_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);
