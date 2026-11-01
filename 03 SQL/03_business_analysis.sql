USE telecom_churn;

-- 1. Executive KPIs
SELECT
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    COUNT(*) - SUM(churn_flag) AS retained_customers,
    ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct,
    ROUND(SUM(monthly_charges), 2) AS monthly_revenue,
    ROUND(SUM(monthly_revenue_at_risk), 2) AS monthly_revenue_at_risk,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(AVG(tenure_months), 2) AS avg_tenure_months
FROM customer_churn;

-- 2. Churn by contract
SELECT contract, COUNT(*) AS customers, SUM(churn_flag) AS churned_customers,
       ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct,
       ROUND(SUM(monthly_revenue_at_risk), 2) AS monthly_revenue_at_risk
FROM customer_churn
GROUP BY contract
ORDER BY churn_rate_pct DESC;

-- 3. Churn by tenure band
SELECT tenure_band, COUNT(*) AS customers, SUM(churn_flag) AS churned_customers,
       ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY tenure_band
ORDER BY FIELD(tenure_band,'0-6 months','7-12 months','13-24 months','25-48 months','49+ months');

-- 4. Churn by payment method
SELECT payment_method, COUNT(*) AS customers, SUM(churn_flag) AS churned_customers,
       ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY payment_method
ORDER BY churn_rate_pct DESC;

-- 5. Churn by internet service
SELECT internet_service, COUNT(*) AS customers, SUM(churn_flag) AS churned_customers,
       ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct,
       ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM customer_churn
GROUP BY internet_service
ORDER BY churn_rate_pct DESC;

-- 6. Effect of tech support
SELECT tech_support, COUNT(*) AS customers, SUM(churn_flag) AS churned_customers,
       ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY tech_support
ORDER BY churn_rate_pct DESC;

-- 7. Effect of online security
SELECT online_security, COUNT(*) AS customers, SUM(churn_flag) AS churned_customers,
       ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct
FROM customer_churn
GROUP BY online_security
ORDER BY churn_rate_pct DESC;

-- 8. Highest-risk descriptive combinations (minimum 50 customers)
SELECT contract, internet_service, payment_method, tenure_band,
       COUNT(*) AS customers, SUM(churn_flag) AS churned_customers,
       ROUND(100.0 * AVG(churn_flag), 2) AS churn_rate_pct,
       ROUND(SUM(monthly_revenue_at_risk), 2) AS monthly_revenue_at_risk
FROM customer_churn
GROUP BY contract, internet_service, payment_method, tenure_band
HAVING COUNT(*) >= 50
ORDER BY churn_rate_pct DESC, monthly_revenue_at_risk DESC
LIMIT 15;

-- 9. Charges comparison: churned vs retained
SELECT customer_status, COUNT(*) AS customers,
       ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
       ROUND(AVG(total_charges), 2) AS avg_total_charges,
       ROUND(AVG(tenure_months), 2) AS avg_tenure_months
FROM customer_churn
GROUP BY customer_status;

-- 10. Retention-priority cohort (descriptive rule, not a predictive model)
SELECT COUNT(*) AS priority_customers,
       ROUND(SUM(monthly_charges), 2) AS monthly_revenue_exposure
FROM customer_churn
WHERE churn = 'No'
  AND contract = 'Month-to-month'
  AND tenure_months <= 12
  AND internet_service = 'Fiber optic'
  AND tech_support = 'No';

