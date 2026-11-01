-- Customer Retention & Revenue Growth Strategy - Telecom Industry
-- MySQL 8.0+

CREATE DATABASE IF NOT EXISTS telecom_churn;
USE telecom_churn;

DROP TABLE IF EXISTS customer_churn;
CREATE TABLE customer_churn (
    customer_id VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    senior_citizen TINYINT,
    partner VARCHAR(3),
    dependents VARCHAR(3),
    tenure_months INT,
    phone_service VARCHAR(3),
    multiple_lines VARCHAR(20),
    internet_service VARCHAR(20),
    online_security VARCHAR(20),
    online_backup VARCHAR(20),
    device_protection VARCHAR(20),
    tech_support VARCHAR(20),
    streaming_tv VARCHAR(20),
    streaming_movies VARCHAR(20),
    contract VARCHAR(20),
    paperless_billing VARCHAR(3),
    payment_method VARCHAR(40),
    monthly_charges DECIMAL(10,2),
    total_charges DECIMAL(12,2),
    churn VARCHAR(3),
    churn_flag TINYINT,
    senior_citizen_label VARCHAR(3),
    tenure_band VARCHAR(20),
    customer_status VARCHAR(10),
    monthly_revenue_at_risk DECIMAL(10,2)
);

-- In MySQL Workbench, replace the path below with the cleaned CSV's absolute path.
-- If needed, enable: SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE 'REPLACE_WITH_ABSOLUTE_PATH/telco_customer_churn_cleaned.csv'
INTO TABLE customer_churn
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS rows_loaded FROM customer_churn;

