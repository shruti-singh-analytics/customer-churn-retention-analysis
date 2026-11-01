# Business Questions: Customer Churn & Retention Analysis

## Project Objective

To analyse customer churn patterns, identify factors associated with customer attrition, understand revenue exposure, and develop data-driven retention strategies.

**Dataset:** Telco customer churn data, 7,043 customers and 21 columns.
**Tools:** SQL, Excel, Power BI.
**Note:** Revenue figures use the `Monthly Charges` column, so "revenue" means monthly revenue unless stated otherwise. Findings describe associations in the data, not proven causes.

---

## Key Business Questions and Findings

### 1. What is the overall customer churn rate?
**Finding:** 1,869 of 7,043 customers have churned, a churn rate of **26.54%**.
**Implication:** Roughly one in four customers leaves, so retention is a material business issue and not a minor leak.

### 2. Which contract type has the highest churn rate?
**Finding:** Month-to-month contracts churn at **42.71%**, compared with 11.27% for one-year and 2.83% for two-year contracts. Month-to-month customers also make up about **89%** of all churned customers.
**Implication:** Contract length is the strongest single signal of churn risk in the data.

### 3. How does customer tenure influence churn behaviour?
**Finding:** Churn is **52.9%** in the first 6 months, 35.9% in months 7-12, and falls steadily to **5.3%** in months 67-72. Churned customers had an average tenure of 18.0 months, versus 37.6 months for retained customers.
**Implication:** The first year is the critical window, so early engagement and onboarding matter most.

### 4. Which internet service category experiences the highest churn?
**Finding:** Fiber optic customers churn at **41.9%**, compared with 19.0% for DSL and 7.4% for customers with no internet service.
**Implication:** The premium fiber product loses customers fastest, which points to a price, quality or service-experience issue worth investigating.

### 5. Which payment methods are associated with higher churn?
**Finding:** Electronic check churns at **45.29%**, versus 19.11% for mailed check, 16.71% for bank transfer (automatic) and 15.24% for credit card (automatic).
**Implication:** Customers on automatic payments are far more likely to stay, so moving customers to auto-pay is a low-cost retention lever.

### 6. How does monthly revenue differ between churned and retained customers?
**Finding:** Churned customers paid an average of **$74.44** a month, versus **$61.27** for retained customers, about 21% more.
**Implication:** The customers leaving are higher-paying ones, so losses in revenue are larger than losses in headcount.

### 7. How much monthly revenue is associated with customers who have churned?
**Finding:** Churned customers account for **$139.13K** of **$456.12K** in monthly revenue, which is **30.5%** of the total, compared with 26.5% of customers.
**Implication:** Churn costs a larger share of revenue than of customers, so retention efforts can be justified on revenue and not only on customer counts.

### 8. How large and how risky is the highest-risk customer segment?
**Finding:** Customers who are month-to-month, on fiber optic, paying by electronic check and in their first 12 months number **631** (about 9% of the base). Of these, **449 churned (71%)**, compared with 26.5% overall. This segment alone accounts for about 24% of all churned customers.
**Implication:** A small, clearly defined group drives a quarter of all churn, which makes it an efficient target for retention offers.

### 9. Do high-value customers churn more, and how much revenue is at stake?
**Finding:** The top 25% of customers by monthly bill (**$89.85 or more**, 1,771 customers) churn at **32.7%** and account for **41.5%** of all lost monthly revenue.
**Implication:** Protecting high-bill customers is a revenue priority even though they are not the highest-churn group by rate.

### 10. What would moving month-to-month customers onto longer contracts be worth?
**Scenario:** If **10%** of month-to-month customers (about 388 of 3,875) moved to one-year contracts and then churned at the current one-year rate (11.27% instead of 42.71%), about **122 fewer customers** would churn. At the average month-to-month bill of about $66.40, that is roughly **$8.1K** in monthly revenue (about $97K a year).
**Assumption and limit:** This is an upper bound. It assumes converted customers behave like existing one-year customers, but customers who choose longer contracts may already be more loyal.
**Implication:** Even a modest conversion programme has a quantifiable payoff, and this scenario gives a basis for testing it.

### 11. Which customer segments and actions should the business prioritise?
Ranked by the customers and revenue involved:

1. **Contract migration:** move month-to-month customers to annual plans (42.7% vs 2.8% churn on two-year plans).
2. **Early-life intervention:** structured onboarding in the first 12 months (47.4% churn in year one).
3. **Payment and service recovery:** encourage automatic payments and target fiber optic customers (electronic check 45.3%, fiber 41.9%).
4. **Service bundling:** trial offers of Online Security and Tech Support (churn of 41.8% without security vs 14.6% with it).
5. **Senior customer care:** a dedicated support and billing track (41.7% churn vs 23.6% for other customers).

### 12. What are the limitations of this analysis?
- The data has **no date column**, so trends are by customer tenure and not calendar time.
- There is **no cost, discount or offer data**, so the financial scenarios are estimates.
- All findings are **associations**. For example, customers with security add-ons may already be more loyal for other reasons, so a free trial might not cut churn by as much as the gap suggests.
- Recommendations should be validated with a **controlled test** before being rolled out at scale.

---

## Key Takeaways

- **Churn affects revenue disproportionately.** 26.5% of customers churn, accounting for 30.5% of monthly revenue.
- **Contract type is a strong churn indicator.** Month-to-month customers have a 42.7% churn rate, compared with 2.8% for two-year contracts.
- **The first year is critical.** Churn reaches 52.9% during the first six months, highlighting the importance of early customer engagement.
- **A high-risk segment drives significant churn.** Month-to-month, fiber optic, electronic check customers in their first 12 months (about 9% of the base) churn at 71% and account for about 24% of all churned customers.
- **Recommended retention priorities:** contract migration, early-life onboarding, automatic payments and fiber recovery.

## Next Steps

- Test contract migration and onboarding offers through controlled pilot programmes.
- Add sign-up and cancellation dates to analyse churn trends over time.
- Incorporate cost, discount and promotional data to estimate the financial returns of retention strategies.