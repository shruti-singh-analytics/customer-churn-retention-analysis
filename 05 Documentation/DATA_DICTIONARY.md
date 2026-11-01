# Data Dictionary and Cleaning Log

## Cleaning decisions

- Preserved the original 21-column CSV unchanged in `01 Raw Data`.
- Standardised column names to lowercase `snake_case` in the cleaned file.
- Converted `total_charges` from text to numeric.
- Replaced 11 blank `total_charges` values with 0 because all 11 records have zero tenure, indicating no accumulated charges yet.
- Added five transparent analysis fields: `churn_flag`, `senior_citizen_label`, `tenure_band`, `customer_status`, and `monthly_revenue_at_risk`.
- Verified 7,043 rows, 7,043 unique customer IDs, zero duplicates, and zero missing values after cleaning.

## Fields

| Field | Type | Meaning |
|---|---|---|
| customer_id | Text | Unique customer identifier |
| gender | Text | Female or Male |
| senior_citizen | Integer | 1 if senior citizen, otherwise 0 |
| partner | Text | Whether the customer has a partner |
| dependents | Text | Whether the customer has dependents |
| tenure_months | Integer | Months the customer has stayed |
| phone_service | Text | Whether phone service is subscribed |
| multiple_lines | Text | Multiple-lines service status |
| internet_service | Text | DSL, Fibre optic, or No internet service |
| online_security | Text | Online-security service status |
| online_backup | Text | Online-backup service status |
| device_protection | Text | Device-protection service status |
| tech_support | Text | Technical-support service status |
| streaming_tv | Text | Streaming-TV service status |
| streaming_movies | Text | Streaming-movies service status |
| contract | Text | Month-to-month, one-year, or two-year contract |
| paperless_billing | Text | Whether paperless billing is used |
| payment_method | Text | Customer's billing payment method |
| monthly_charges | Decimal | Current monthly charge |
| total_charges | Decimal | Cumulative charges; zero for the 11 zero-tenure records |
| churn | Text | Whether the customer left: Yes or No |
| churn_flag | Integer | 1 for churned, 0 for retained |
| senior_citizen_label | Text | Readable label derived from `senior_citizen` |
| tenure_band | Text | 0-6, 7-12, 13-24, 25-48, or 49+ months |
| customer_status | Text | Churned or Retained |
| monthly_revenue_at_risk | Decimal | `monthly_charges` when churn = Yes, otherwise 0 |

