INSERT INTO dealerships (name, address, phone)
VALUES 
("Speed Motors", "123 Main St", "469-469-4699"),
("Urban Automobile", "999 Metro Ave", "972-972-9999");

INSERT INTO vehicles (VIN, make, color, `year`, price, SOLD)
VALUES
("2T1BURHE0JC074582", "Toyota", "Grey", 2020, 34999.00, "false"),
("5NPE24AF4FH255876", "Hyundai", "White", 2017, 18950.50, "true");

INSERT INTO inventory (dealership_id, VIN)
VALUES
(1, "2T1BURHE0JC074582"),
(2, "5NPE24AF4FH255876");

INSERT INTO sales_contracts (VIN)
VALUES
("5NPE24AF4FH255876");

INSERT INTO lease_contracts (VIN)
VALUES
("2T1BURHE0JC074582");
