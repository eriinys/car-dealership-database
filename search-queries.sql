SELECT DISTINCT *
FROM dealerships;

SELECT vehicles.VIN, make, color, `year`, price, SOLD, dealership_id
FROM vehicles
JOIN inventory
ON vehicles.VIN = inventory.Vin
WHERE dealership_id = 1;

SELECT *
FROM vehicles
WHERE vin = "2T1BURHE0JC074582";

SELECT dealerships.dealership_id
FROM dealerships
JOIN inventory
ON dealerships.dealership_id = inventory.dealership_id
WHERE inventory.VIN = "5NPE24AF4FH255876";

SELECT *
FROM dealerships
JOIN inventory
ON dealerships.dealership_id = inventory.dealership_id
JOIN vehicles
ON vehicles.VIN = inventory.VIN
WHERE vehicles.make = "Hyundai";

SELECT *
FROM sales_contracts
JOIN inventory
ON sales_contracts.VIN = inventory.VIN
JOIN dealerships
ON inventory.dealership_id = dealerships.dealership_id
WHERE dealerships.dealership_id = 2
AND sales_date BETWEEN "2023-01-01" AND "2025-01-01";