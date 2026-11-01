# Power BI Dashboard Build Guide

## Import and model

1. Open Power BI Desktop and select **Get data > Text/CSV**.
2. Import `02 Cleaned Data/telco_customer_churn_cleaned.csv`.
3. Rename the table `CustomerChurn`.
4. Confirm data types: `tenure_months` and `churn_flag` are whole numbers; charge fields are decimal numbers; all service and segment fields are text.
5. Create the measures in `DAX_Measures.txt`. Do not sum `total_charges` and label it revenue: it is historical billing, not a time-period revenue measure.

## One-page dashboard (16:9)

**Title:** Customer Retention & Revenue Growth Strategy - Telecom Industry

Top row KPI cards:

- Total Customers: 7,043
- Churn Rate: 26.54%
- Monthly Revenue: $456.12K
- Monthly Revenue at Risk: $139.13K
- Average Tenure: 32.37 months

Main visuals:

| Visual | Type | Axis/Legend | Value |
|---|---|---|---|
| Churn by Contract | Clustered bar | `contract` | `Churn Rate` |
| Churn by Tenure | Column | `tenure_band` | `Churn Rate` |
| Churn by Payment Method | Clustered bar | `payment_method` | `Churn Rate` |
| Churn by Internet Service | Clustered bar | `internet_service` | `Churn Rate` |
| Revenue at Risk by Contract | Column | `contract` | `Monthly Revenue at Risk` |
| Churn Drivers Matrix | Matrix | contract, internet service | customers, churn rate, revenue at risk |

Slicers: `gender`, `senior_citizen_label`, `contract`, `internet_service`, `tenure_band`.

## Formatting

- Canvas: 16:9, white or very light grey.
- Primary navy: `#16324F`; highlight teal: `#00A6A6`; churn coral: `#E76F51`; neutral grey: `#D9E2EC`.
- Use coral only for churn/risk and teal for retained/positive context.
- Show data labels; sort churn-rate charts descending except tenure, which must remain chronological.
- Keep the page uncluttered; do not use pie charts, 3D effects, or decorative gauges.
- Add a small note: “Revenue at risk = monthly charges of customers recorded as churned; descriptive, not causal.”

## Final verification before screenshot

- KPI values match `kpi_summary.csv`.
- Selecting any slicer updates every relevant visual.
- Percentages use the `Churn Rate` measure, not average of a preformatted percentage column.
- No visual has `(Blank)` categories.
- Export one 16:9 PNG and one PDF after checking spelling and alignment.

