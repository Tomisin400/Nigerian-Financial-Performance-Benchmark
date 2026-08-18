

-- Company Rankings using RANK() and DENSE_RANK()

SELECT
    company,
    industry,
    year,
    revenue_m,
    net_income_m,

    -- Revenue Rank per year
    RANK() OVER (
        PARTITION BY year
        ORDER BY revenue_m DESC
    ) AS revenue_rank,

    -- Net Income Rank per year
    RANK() OVER (
        PARTITION BY year
        ORDER BY net_income_m DESC
    ) AS net_income_rank,

    -- Profit Margin Rank per year (no rounding inside rank)
    RANK() OVER (
        PARTITION BY year
        ORDER BY (net_income_m / NULLIF(revenue_m, 0)) DESC
    ) AS profit_margin_rank,

    -- Revenue Share % per year (market share)
    ROUND(
        revenue_m /
        NULLIF(SUM(revenue_m) OVER (PARTITION BY year), 0)
        * 100, 2
    ) AS market_share_pct

FROM financials
ORDER BY year, revenue_rank;