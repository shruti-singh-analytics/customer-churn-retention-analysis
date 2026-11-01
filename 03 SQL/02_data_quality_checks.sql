USE telecom_churn;

-- Expected: 7,043 rows and 7,043 unique customers.
SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT customer_id) AS unique_customers
FROM customer_churn;

-- Expected: zero rows.
SELECT customer_id, COUNT(*) AS duplicate_count
FROM customer_churn
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Expected: all counts equal zero after cleaning.
SELECT
    SUM(customer_id IS NULL OR customer_id = '') AS missing_customer_id,
    SUM(monthly_charges IS NULL) AS missing_monthly_charges,
    SUM(total_charges IS NULL) AS missing_total_charges,
    SUM(churn NOT IN ('Yes','No')) AS invalid_churn_values
FROM customer_churn;

-- Reconciliation: 1,869 churned + 5,174 retained = 7,043.
SELECT customer_status, COUNT(*) AS customers
FROM customer_churn
GROUP BY customer_status;

