# Customer Retention & Revenue Growth Strategy - Telecom Industry

An end-to-end business analysis of 7,043 fictional telecom customer records using Excel, MySQL, and Power BI. The project identifies the customer segments most associated with churn, quantifies monthly recurring revenue associated with churned customers, and translates the findings into practical retention actions. 

## Dashboard Preview

![Power BI Dashboard](<04) Power Bi/Dashboard_preview.png>)

## Business objective

The telecom company needs to understand where churn is concentrated and which retention actions should be prioritised. The analysis answers five questions:

1. What is the overall churn rate and monthly revenue exposure?
2. Which contract and tenure groups have the highest churn?
3. How do payment method and internet service relate to churn?
4. Do support and security services distinguish lower-churn customers?
5. Which customer cohorts should receive targeted retention interventions?

## Tools and workflow

`Raw CSV -> Excel validation and cleaning -> MySQL analysis -> Power BI dashboard -> Business recommendations`

- **Excel:** initial audit, data-quality checks, KPI reconciliation, and exploratory analysis
- **MySQL 8.0:** reproducible KPI and segment queries
- **Power BI:** interactive KPI dashboard, segment comparisons, slicers, and revenue-at-risk view

## Verified results

| KPI | Result |
|---|---:|
| Customers | 7,043 |
| Churned customers | 1,869 |
| Churn rate | 26.54% |
| Monthly revenue | $456,116.60 |
| Monthly revenue at risk | $139,130.85 |
| Average monthly charges | $64.76 |
| Average tenure | 32.37 months |

“Monthly revenue at risk” is the sum of monthly charges for customers recorded as churned. It is a descriptive exposure measure, not proof of realised loss or causation.

## Key findings

- Month-to-month customers churned at **42.71%**, compared with **11.27%** for one-year and **2.83%** for two-year contracts.
- Customers in their first 0-6 months churned at **52.94%**; the rate fell to **9.51%** among customers with 49+ months of tenure.
- Electronic-check users had a **45.29%** churn rate, the highest of the four payment methods.
- Fibre-optic customers churned at **41.89%**, compared with **18.96%** for DSL customers.
- Customers without tech support churned at **41.64%**, versus **15.17%** among customers with tech support.
- Customers without online security churned at **41.77%**, versus **14.61%** among those with online security.

These are associations in a fictional, cross-sectional dataset. They do not establish that any single feature causes churn.

## Recommendations

1. **Strengthen first-90-day onboarding.** Prioritise setup guidance and proactive support for short-tenure customers, especially those on month-to-month fibre plans.
2. **Offer contract migration incentives.** Test modest benefits for moving suitable month-to-month customers to one-year plans; measure incremental retention rather than assuming success.
3. **Promote support and security bundles.** Target customers without tech support or online security with trials or low-friction bundles.
4. **Improve electronic-payment journeys.** Investigate friction and failed-payment experiences among electronic-check users, then test autopay migration messaging.
5. **Run controlled retention experiments.** Track conversion, churn reduction, cost per retained customer, and protected recurring revenue by cohort.

## Repository structure

```text
01 Raw Data/          Original source CSV (unchanged)
02 Cleaned Data/      Analysis-ready CSV, KPI/segment outputs, QA checks
03 SQL/               Database setup, QA, and business analysis queries
04 Power BI/          DAX measures and exact dashboard build guide
05 Documentation/     Data dictionary, report, dashboard preview, CV/LinkedIn copy
```

## Reproduce the analysis

1. Review the source and cleaning notes in `05 Documentation/DATA_DICTIONARY.md`.
2. Open `Telecom_Churn_Analysis.xlsx` for the Excel audit and summaries.
3. Run the SQL scripts in numeric order in MySQL Workbench. Replace the placeholder CSV path in `01_database_setup.sql`.
4. Import the cleaned CSV into Power BI and follow `POWER_BI_BUILD_GUIDE.md`.
5. Compare the dashboard KPIs with `02 Cleaned Data/` before publishing.

## Dataset

IBM Telco Customer Churn sample data. It represents a fictional telecom company and contains customer demographics, subscribed services, account information, charges, and churn status.

## Limitations

- No dates are provided, so the analysis cannot calculate time trends, cohort retention, or true monthly churn flow.
- The dataset is fictional and cross-sectional.
- The work is descriptive; no causal claims or predictive model performance claims are made.
- Revenue at risk is a monthly-charge exposure proxy, not booked revenue loss.

