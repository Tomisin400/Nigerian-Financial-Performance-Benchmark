

CREATE TABLE financials (
    company VARCHAR(50) NOT NULL,
    industry VARCHAR(30) NOT NULL,
    year INT NOT NULL,
    revenue_m NUMERIC(18,2),
    net_income_m NUMERIC(18,2),
    pretax_income_m NUMERIC(18,2),
    income_tax_m NUMERIC(18,2),
    total_expenses_m NUMERIC(18,2),
    total_assets_m NUMERIC(18,2),
    shareholders_equity_m NUMERIC(18,2)
);