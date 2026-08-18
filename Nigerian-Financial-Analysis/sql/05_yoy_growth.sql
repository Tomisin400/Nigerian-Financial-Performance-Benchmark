
-- Year on Year Growth Analysis using LAG()

SELECT
    company,
    industry,
    year,
    revenue_m,
    net_income_m,
    total_assets_m,

    -- YoY Revenue Growth
    ROUND(
        (revenue_m - LAG(revenue_m) OVER (PARTITION BY company ORDER BY year)) /
        NULLIF(LAG(revenue_m) OVER (PARTITION BY company ORDER BY year), 0) * 100, 2
    ) AS yoy_revenue_growth_pct,

    -- YoY Net Income Growth (standard financial formula)
    ROUND(
        (net_income_m - LAG(net_income_m) OVER (PARTITION BY company ORDER BY year)) /
        NULLIF(LAG(net_income_m) OVER (PARTITION BY company ORDER BY year), 0) * 100, 2
    ) AS yoy_net_income_growth_pct,

    -- YoY Asset Growth
    ROUND(
        (total_assets_m - LAG(total_assets_m) OVER (PARTITION BY company ORDER BY year)) /
        NULLIF(LAG(total_assets_m) OVER (PARTITION BY company ORDER BY year), 0) * 100, 2
    ) AS yoy_asset_growth_pct

FROM financials
ORDER BY company, year;