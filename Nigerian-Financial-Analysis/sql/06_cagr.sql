

-- CAGR (Compound Annual Growth Rate) 2021-2025
-- Formula: (End Value / Start Value) ^ (1 / Number of Years) - 1
-- Number of years = 4 (from 2021 to 2025)

WITH start_values AS (
    SELECT company, industry,
        revenue_m AS start_revenue,
        net_income_m AS start_net_income,
        total_assets_m AS start_assets
    FROM financials
    WHERE year = 2021
),
end_values AS (
    SELECT company,
        revenue_m AS end_revenue,
        net_income_m AS end_net_income,
        total_assets_m AS end_assets
    FROM financials
    WHERE year = 2025
)
SELECT
    s.company,
    s.industry,

    -- Revenue CAGR
    ROUND(
        (POWER(end_revenue / NULLIF(start_revenue, 0), 1.0/4) - 1) * 100, 2
    ) AS revenue_cagr_pct,

    -- Net Income CAGR (NULL when negative values exist)
    CASE
        WHEN start_net_income <= 0 OR end_net_income <= 0 THEN NULL
        ELSE ROUND(
            (POWER(end_net_income / start_net_income, 1.0/4) - 1) * 100, 2
        )
    END AS net_income_cagr_pct,

    -- Asset CAGR
    ROUND(
        (POWER(end_assets / NULLIF(start_assets, 0), 1.0/4) - 1) * 100, 2
    ) AS asset_cagr_pct

FROM start_values s
JOIN end_values e ON s.company = e.company
ORDER BY s.company;