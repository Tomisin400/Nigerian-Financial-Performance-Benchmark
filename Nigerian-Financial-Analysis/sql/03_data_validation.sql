
-- Check all 20 rows loaded
SELECT COUNT(*) FROM financials;

-- Check all 4 companies are present
SELECT DISTINCT company FROM financials;

-- Check all 5 years are present
SELECT DISTINCT year FROM financials;


-- Check MTN negative values loaded correctly
SELECT * FROM financials
WHERE company = 'MTN Nigeria';