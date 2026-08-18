

-- Weighted Performance Scorecard
-- Ranks all 4 companies based on key financial metrics
-- Metric Weights:
-- Revenue Growth (CAGR)  : 25%
-- Profit Margin          : 25%
-- ROA                    : 20%
-- ROE                    : 20%
-- Expense Ratio          : 10%  (lower is better)
-- Note: Weights represent the analyst's scoring framework,
-- not an industry-standard financial model.

WITH kpis AS (
    SELECT
        company,
        industry,

        -- Average Profit Margin (2021-2025)
        ROUND(AVG(net_income_m / NULLIF(revenue_m, 0)) * 100, 2)
            AS avg_profit_margin,

        -- Average ROA (2021-2025)
        ROUND(AVG(net_income_m / NULLIF(total_assets_m, 0)) * 100, 2)
            AS avg_roa,

        -- Average ROE (2021-2025)
        -- NULL when equity is negative (MTN 2023 & 2024)
        ROUND(AVG(
            CASE
                WHEN shareholders_equity_m <= 0 THEN NULL
                ELSE net_income_m / shareholders_equity_m
            END
        ) * 100, 2) AS avg_roe,

        -- Average Expense Ratio (2021-2025)
        ROUND(AVG(total_expenses_m / NULLIF(revenue_m, 0)) * 100, 2)
            AS avg_expense_ratio

    FROM financials
    GROUP BY company, industry
),
cagr AS (
    WITH start_val AS (
        SELECT company, revenue_m AS start_rev
        FROM financials WHERE year = 2021
    ),
    end_val AS (
        SELECT company, revenue_m AS end_rev
        FROM financials WHERE year = 2025
    )
    SELECT s.company,
        ROUND((POWER(end_rev / NULLIF(start_rev, 0), 1.0/4) - 1) * 100, 2)
            AS revenue_cagr
    FROM start_val s
    JOIN end_val e ON s.company = e.company
),
combined AS (
    SELECT
        k.company,
        k.industry,
        c.revenue_cagr,
        k.avg_profit_margin,
        k.avg_roa,
        k.avg_roe,
        k.avg_expense_ratio
    FROM kpis k
    JOIN cagr c ON k.company = c.company
),
ranked AS (
    SELECT *,
        DENSE_RANK() OVER (ORDER BY revenue_cagr DESC) AS cagr_rank,
        DENSE_RANK() OVER (ORDER BY avg_profit_margin DESC) AS margin_rank,
        DENSE_RANK() OVER (ORDER BY avg_roa DESC) AS roa_rank,
        DENSE_RANK() OVER (ORDER BY avg_roe DESC) AS roe_rank,
        DENSE_RANK() OVER (ORDER BY avg_expense_ratio ASC) AS expense_rank
    FROM combined
),
scored AS (
    SELECT *,
        ROUND(
            ((5 - cagr_rank) * 25 * 0.25) +
            ((5 - margin_rank) * 25 * 0.25) +
            ((5 - roa_rank) * 25 * 0.20) +
            ((5 - roe_rank) * 25 * 0.20) +
            ((5 - expense_rank) * 25 * 0.10)
        , 2) AS weighted_score
    FROM ranked
)
SELECT
    company,
    industry,
    revenue_cagr,
    avg_profit_margin,
    avg_roa,
    avg_roe,
    avg_expense_ratio,
    weighted_score,

    CASE
        WHEN weighted_score >= 85 THEN 'Excellent'
        WHEN weighted_score >= 65 THEN 'Strong'
        WHEN weighted_score >= 50 THEN 'Moderate'
        ELSE 'Needs Improvement'
    END AS performance_tier,

    DENSE_RANK() OVER (ORDER BY weighted_score DESC) AS final_rank

FROM scored
ORDER BY final_rank;