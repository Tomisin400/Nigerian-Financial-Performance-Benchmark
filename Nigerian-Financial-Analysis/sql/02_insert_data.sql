
COPY financials FROM 'C:\tmp\nigerian_company_financials.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM financials;