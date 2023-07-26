WITH subbu AS (
  SELECT * FROM sql_invoicing.clients
  
)
-- Now you can use the CTE "subbu" in your queries
SELECT * FROM subbu; -- This will display the data from the "clients" table



-- Assuming the temporary tables "subbu" and "aithal" have the same structure
-- and you want to select all columns from both tables

-- Create the temporary table "subbu" with the same structure as the "clients" table
CREATE TEMPORARY TABLE subbu AS
SELECT *
FROM sql_invoicing.clients;

-- Create the temporary table "aithal" with the same structure as the "invoice" table
CREATE TEMPORARY TABLE aithal AS
SELECT *
FROM sql_invoicing.invoice;

-- Now perform the UNION between the two temporary tables
-- UNION removes duplicates, use UNION ALL if you want to keep duplicates
CREATE TEMPORARY TABLE union_result AS
SELECT *
FROM subbu
UNION
SELECT *
FROM aithal;



with aithal AS(
SELECT * FROM sql_invoicing.invoices
)
SELECT * FROM aithal;

SELECT *
FROM subbu
UNION
SELECT *
FROM aithal;



