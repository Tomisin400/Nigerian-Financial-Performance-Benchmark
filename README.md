
#  Nigerian Financial Performance Benchmark (2021–2025)

## 📋 Table of Contents

1. [Project Overview](#-does-having-the-highest-revenue-actually-mean-having-the-strongest-financial-performance)
2. [Business Problem](#-business-problem)
3. [Business Questions](#-business-questions)
4. [Dataset](#dataset)
5. [Tools Used](#tools-used)
6. [Financial Metrics](#-financial-metrics)
7. [Power BI Dashboard](#-power-bi-dashboard)
8. [Weighted Performance Score](#-weighted-performance-score)
9. [Key Findings](#-key-findings)
10. [Business Recommendations](#-business-recommendations)
11. [Important Limitation](#important-limitation)
12. [Final Takeaway](#-final-takeaway)
    

---

## 📌 Does the company with the highest revenue necessarily have the strongest financial performance?

This project started with a simple idea: compare the financial performance of major Nigerian companies and identify the strongest performer.

However, as the analysis developed, one important issue became clear.

Three of the companies — GTCO, Zenith Bank, and UBA — operate in banking, while MTN Nigeria operates in telecommunications.

Rather than forcing MTN into a direct competitor analysis where the companies do not have identical business models, I reframed the project as a Financial Performance Benchmark.

The analysis therefore focuses on a broader question:

> What does financial strength look like when growth, profitability, returns, and operational efficiency are considered together?

Using financial data from 2021–2025, I used SQL to calculate key financial metrics, built a weighted performance framework, and developed an interactive Power BI dashboard to communicate the findings.



## 🎯 Business Problem

Revenue alone does not tell the full story of a company's financial performance.

A company can generate the highest revenue but have weaker profitability or efficiency. Another company may generate less revenue while converting a larger portion of that revenue into profit and operating with lower expenses.

This created four areas of focus:

- Growth — How quickly is revenue increasing?
- Profitability — How effectively is revenue converted into profit?
- Returns — How effectively are assets and shareholders' equity generating returns?
- Efficiency — How much of the company's revenue is consumed by expenses?

The goal was to determine whether the company with the largest financial scale was also the strongest performer across these dimensions.



## 🔍 Business Questions

The analysis answers the following questions:

1. Which company generated the highest revenue between 2021 and 2025?
2. Which company had the strongest average profit margin?
3. Which company achieved the strongest ROA?
4. Which company achieved the strongest ROE?
5. Which company operated with the lowest expense ratio?
6. Which company recorded the strongest revenue CAGR?
7. How does revenue growth relate to profitability?
8. Does the highest-revenue company also have the strongest overall financial performance?
9. Which company achieved the highest weighted performance score?



##  Dataset

The dataset contains annual financial information for four Nigerian companies from 2021–2025.

### Companies Analyzed

- GTCO
- Zenith Bank
- UBA
- MTN Nigeria

### Period

2021–2025

### Key Variables

- Revenue
- Net Income
- Pretax Income
- Income Tax
- Total Expenses
- Total Assets
- Shareholders' Equity

Unit: ₦ millions

Data Source: StockAnalysis.com

> Note: All figures are reported in Millions of Nigerian Naira (NGN). Revenue is defined as the Revenue row on StockAnalysis.com .


##  Tools Used

| Tool | Purpose |
|---|---|
| SQL | Data exploration, KPI calculations, CAGR, ranking and weighted scoring |
| Power BI | Data modeling, DAX calculations and interactive dashboard development |
| Excel | Data preparation and validation |



## 📐 Financial Metrics

### Revenue CAGR
Measures annualised revenue growth between 2021 and 2025.

(End Revenue ÷ Start Revenue) ^ (1/4) − 1 × 100

### Profit Margin
Measures how much net income is generated from revenue.

Net Income ÷ Revenue × 100

### ROA
Measures how effectively a company generates profit from its assets.

Net Income ÷ Total Assets × 100

### ROE
Measures the return generated on shareholders' equity.

Net Income ÷ Shareholders Equity × 100

### Expense Ratio
Measures the proportion of revenue consumed by total expenses.

Total Expenses ÷ Revenue × 100



## 📊 Power BI Dashboard

The final dashboard contains three analytical pages.


### 1. Executive Overview

#### Business Question
What does the overall financial picture look like?

This page provides a high-level view of revenue, net income, profitability and overall performance.

#### Key KPIs

- Total Revenue: ₦32.42M
- Total Net Income: ₦9.18M
- Average Profit Margin: 34.38%
- Strongest Overall Performer: GTCO


<img width="1381" height="772" alt="NGF 1 1" src="https://github.com/user-attachments/assets/e6159bd6-27cc-4d74-b151-070d3719608b" />







### 2. Profitability & Efficiency Analysis

#### Business Question
How profitable and efficiently are the companies operating?

This page moves beyond revenue and examines the financial indicators behind performance.

#### Key KPIs

| Metric | Result |
|---|---|
| Best Profit Margin | GTCO — 51.55% |
| Best ROA | MTN Nigeria — 6.78% |
| Best ROE | MTN Nigeria — 149.79%* |
| Lowest Expense Ratio | GTCO — 34.29% |

> *MTN Nigeria's ROE of 149.79% is unusually high due to negative shareholders equity in 2023 and 2024 caused by foreign exchange losses following the Naira devaluation. See Important Limitation section below.




<img width="1376" height="778" alt="NGF 1 2" src="https://github.com/user-attachments/assets/c7e1c426-9abd-4259-b3de-a5505116510c" />






### 3. Financial Performance Benchmark

#### Business Question
What does overall performance look like when multiple financial indicators are considered together?

This page combines growth, profitability, returns and efficiency into a weighted performance benchmark.

#### Key KPIs

- Highest Overall Performance: GTCO
- Highest Revenue CAGR: 45.21%
- Lowest Expense Ratio: GTCO
- Highest Revenue Company: MTN Nigeria




<img width="1378" height="791" alt="NGF 1 3" src="https://github.com/user-attachments/assets/97e4a61d-bdc2-47a7-9d3f-dfbf18908183" />





## 🧮 Weighted Performance Score

To avoid relying on a single financial metric, I created a weighted performance framework using five indicators.

| Metric | Weight |
|---|---:|
| Revenue CAGR | 25% |
| Profit Margin | 25% |
| ROA | 20% |
| ROE | 20% |
| Expense Ratio | 10% |

> Note: These weights represent the analyst's scoring framework, not an industry-standard financial model.

### Final Results

| Rank | Company | Weighted Score | Performance Tier |
|---:|---|---:|---|
| 🥇 1 | GTCO | 90.00 | Excellent |
| 🥈 2 | Zenith Bank | 65.00 | Strong |
| 🥉 3 | MTN Nigeria | 57.50 | Moderate |
| 4 | UBA | 37.50 | Needs Improvement |

The weighted score is out of 100, with a higher score representing stronger performance across the selected financial criteria.


## 💡 Key Findings

### 1. MTN Nigeria Generated the Highest Revenue, But GTCO Had the Strongest Overall Performance

MTN Nigeria recorded approximately ₦14.7M in total revenue, making it the highest-revenue company in the dataset.

However, MTN did not achieve the highest weighted performance score.

GTCO achieved the highest overall score of 90.00.

This demonstrates an important financial analysis principle:

> Scale does not automatically equal financial strength.

A company can generate more revenue while another company performs better across profitability and efficiency measures.


### 2. GTCO Stood Out for Profitability and Efficiency

GTCO recorded:

- 51.55% average profit margin
- 34.29% average expense ratio
- 90.00 weighted performance score

The combination of strong profitability and relatively low expenses contributed significantly to GTCO's overall benchmark performance.


### 3. MTN Nigeria Recorded an Unusually High ROE

MTN Nigeria recorded an average ROE of 149.79%, significantly higher than the other companies analysed.

However, this figure was not treated as automatic evidence that MTN was the strongest performer.

The unusually high ROE was influenced by the relatively low shareholders' equity base during the period, making the ratio highly sensitive to changes in equity.

This is why ROE was interpreted alongside:

- Profit Margin
- ROA
- Revenue Growth
- Expense Ratio

Rather than treating ROE as a standalone measure of performance.

> A very high ROE does not always mean stronger underlying performance. The size and stability of the equity base also matter.


### 4. Growth and Profitability Tell Different Stories

The Growth vs Profitability Matrix shows that strong revenue growth does not automatically translate into strong profitability.

MTN Nigeria recorded the highest cumulative revenue but the lowest average profit margin at 7.92%, while GTCO recorded the highest profit margin at 51.55% despite having the lowest cumulative revenue among the four companies.

This is why the analysis considers both Revenue CAGR and Profit Margin rather than relying on either metric alone.


### 5. Efficiency Matters

GTCO's expense ratio of 34.29% was the lowest among the four companies, while UBA's expense ratio of 60.06% was the highest.

This means UBA spent 60 kobo for every ₦1 of revenue, compared with GTCO which spent only 34 kobo per ₦1 of revenue.

GTCO's cost efficiency was a key contributor to its strong overall benchmark performance.



### 6. MTN Nigeria's Recovery in 2025

MTN Nigeria recorded net losses in both 2023 (−₦133.8B) and 2024 (−₦399.4B) due to significant foreign exchange losses following the Naira devaluation. Despite growing revenue in both years, the FX impact wiped out profitability entirely.

MTN recovered strongly in 2025, recording net income of ₦1.1T — its strongest profit result in the five-year period.



### 7. UBA's Asset Growth Outpacing Profit Growth

UBA recorded the highest asset CAGR among the four companies, expanding its balance sheet aggressively across the period. However, its profit margin of 33.20% and ROA of 1.87% lagged behind GTCO and Zenith Bank, suggesting that asset growth is currently outpacing profitability improvement.



## 💼 Business Recommendations

### GTCO
Maintain its strong profitability and cost efficiency while continuing to pursue sustainable growth.

### Zenith Bank
Build on its strong financial position while identifying opportunities to improve growth and returns.

### MTN Nigeria
Leverage its strong revenue base and growth while focusing on improving profitability and managing foreign exchange risk.

### UBA
Focus on improving profitability, returns and operating efficiency particularly in reducing its expense ratio which was the highest among the four companies.

These recommendations should be interpreted within the context of each company's industry and business model.



##  Important Limitation

The companies analysed do not operate within the same industry.

GTCO, Zenith Bank and UBA operate in banking, while MTN Nigeria operates in telecommunications.

Therefore, the results should not be interpreted as a direct apples-to-apples competitor comparison.

The project was deliberately reframed from a traditional competitor analysis into a financial performance benchmark after recognising this limitation.

This distinction is important because financial ratios can behave differently across industries.

Metrics such as ROA, ROE and expense ratio should therefore be interpreted within their respective business contexts:

- Banks naturally carry much larger balance sheets, which suppresses ROA
- MTN's higher ROA reflects its asset-light telecom business model, not necessarily superior financial performance
- MTN's negative shareholders equity in 2023 and 2024 was caused by foreign exchange losses following the Naira devaluation

### Interpreting ROE

ROE can vary significantly across industries and can be affected by the size of a company's shareholders' equity.

MTN Nigeria's 149.79% average ROE is therefore treated as an indicator requiring context rather than as a standalone measure of superior performance.


## 📌 Final Takeaway

The analysis shows that financial strength cannot be judged by revenue alone.

MTN Nigeria generated the highest revenue across the period, but GTCO achieved the highest weighted performance score because of its combination of strong profitability, growth and cost efficiency.

The analysis also showed why individual financial ratios need context. MTN's 149.79% ROE, for example, required further investigation rather than being accepted at face value.

Ultimately, the project reinforced a principle that is central to data analysis:

> The goal is not just to find the biggest number. The goal is to understand what the numbers mean, why they look the way they do, and what decisions they can support.
