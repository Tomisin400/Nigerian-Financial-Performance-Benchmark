
-- KPI Calculations
SELECT
    company,
    industry,
    year,
    revenue_m,
    net_income_m,
    total_expenses_m,
    total_assets_m,
    shareholders_equity_m,
    
    -- Profit Margin
    ROUND((net_income_m / NULLIF(revenue_m, 0)) * 100, 2) AS profit_margin_pct,
    
    -- Return on Assets (ROA)
    ROUND((net_income_m / NULLIF(total_assets_m, 0)) * 100, 2) AS roa_pct,
    
    -- Return on Equity (ROE)
    ROUND((net_income_m / NULLIF(shareholders_equity_m, 0)) * 100, 2) AS roe_pct,
    
    -- Expense Ratio
    ROUND((total_expenses_m / NULLIF(revenue_m, 0)) * 100, 2) AS expense_ratio_pct,
    
    -- Tax Rate
    ROUND((income_tax_m / NULLIF(pretax_income_m, 0)) * 100, 2) AS tax_rate_pct

FROM financials
ORDER BY company, year;