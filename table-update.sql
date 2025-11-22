ALTER TABLE sales_contracts
ADD COLUMN sales_date DATE;

UPDATE sales_contracts
SET sales_date = "2024-01-17"
WHERE sales_id = 1;

ALTER TABLE lease_contracts
ADD COLUMN lease_date DATE;

UPDATE lease_contracts
SET lease_date = "2025-10-25"
WHERE lease_id = 2;