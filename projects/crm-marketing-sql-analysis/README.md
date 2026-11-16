# CRM Marketing Campaign Performance Analysis (SQL)

## 📌 Project Overview
This project focuses on evaluating the effectiveness of CRM marketing campaigns and email distributions using **PostgreSQL**. The primary goal is to measure customer engagement, conversion, and monetization across different promotional offers and A/B test variations (comparing baseline campaigns against CTR-tagged/banner versions). By calculating key business metrics such as **ARPPU**, **Response Rate**, and incremental customer uplift, the analysis identifies which communication strategies drive the highest revenue and customer retention.

---

## 📁 Dataset
The analysis is built on a relational CRM database consisting of 5 core tables:

* **`CRM.companing`** — Contains metadata about marketing campaigns:
  * `campaning_SD`: Unique campaign identifier.
  * `Start_date`: Launch date of the campaign.
  * `response_period`: Attribution window for tracking customer responses (in days).
  * `description`: Campaign type and objective (e.g., discount offers, A/B banner tests).
* **`CRM.sendings`** — Stores details of specific email distributions within each campaign:
  * `campaning_SD`: Foreign key linking to the campaign.
  * `send_name`: Name of the specific mailing variation (including control/CTR variants).
  * `cell_package_sk`: Unique identifier for the target audience segment/package.
  * `communication_SK`: Communication channel/type identifier.
  * `subject`: Email subject line.
* **`CRM.response`** — Tracks customer interactions and responses to mailings:
  * `Id_customer`: Unique customer identifier.
  * `response_code`: Status code of the response (valid/active responses filtered via `response_code != 2`).
  * `cell_package_sk`: Target segment identifier.
* **`CRM.sales`** — Transactional log of customer purchases:
  * `Date`: Timestamp of the transaction.
  * `Id_customer`: Unique customer identifier.
  * `id_product`: Purchased product identifier.
* **`CRM.price`** — Product pricing catalog:
  * `product_id`: Unique product identifier.
  * `price`: Unit price of the product.

---

## 🛠 Methodology & Tools
* **Database Management System:** PostgreSQL
* **SQL Client / IDE:** DBeaver
* **SQL Techniques:** Common Table Expressions (CTEs), multi-table `JOIN` operations, date/time interval filtering (`interval '3 days'`), conditional filtering (`LIKE`), distinct aggregations, and comparative metric calculations (`ARPPU`, `Response Rate`, `Delta`, and incremental uplift).

---

## 🛠️ Project Implementation Stages
1. **Data Integration & Attribution Window Filtering (`full_table`):** Joined all five CRM tables to link customer responses with actual transactions, filtering purchases strictly within a 3-day attribution window from each campaign's `Start_date`.
2. **Audience & Conversion Aggregation (`all_customers_in_group`, `all_customers_who_buy`):** Calculated the total number of reached customers per segment (excluding `response_code = 2`) alongside the count of unique paying customers and total revenue generated.
3. **Core Metric Calculation (`t_2`):** Computed **ARPPU** (Average Revenue Per Paying User) and **Response Rate** (conversion rate from reached customers to buyers) for each mailing package.
4. **Variant Segmentation (`t_3`, `t_4`):** Split the dataset into two cohorts based on `send_name` patterns—separating baseline distributions from `CTR` test variants.
5. **Comparative Uplift & Ranking:** Joined both cohorts by `campaning_SD` to calculate the response rate difference (`delta`) and estimated incremental customer/revenue impact (`privlecli`), ranking campaigns by overall effectiveness.

---

## 📈 Key Findings

## 📈 Key Findings

| ARPPU (Base) | Response (Base) | Mailing Name | Campaign ID | Subject | ARPPU (CTR) | Response (CTR) | Count Customers | Delta | Estimated Uplift (`privlecli`) |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| 227.71 | 0.66 | `03_07_2013_special_offer` | camp_3512 | Специальное предложение для постоянных клиентов! | 168.16 | 0.39 | 371 | +0.27 | 22,809.71 |
| 266.68 | 0.78 | `28_06_2023_sale_5%` | camp_35367 | Скидка 5% на следующую покупку! | 235.05 | 0.74 | 1,012 | +0.04 | 10,795.21 |
| 290.13 | 0.82 | `23_06_2023_win_prize_A` | camp_3581 | Выиграй приз при любой покупке! | 284.55 | 0.80 | 1,015 | +0.02 | 5,889.64 |
| 282.32 | 0.81 | `23_06_2023_win_prize_B` | camp_3581 | Выиграй приз при любой покупке! | 284.55 | 0.80 | 1,015 | +0.01 | 2,865.55 |
| 290.13 | 0.82 | `23_06_2023_win_prize_A` | camp_3581 | Выиграй приз при любой покупке! | 308.25 | 0.82 | 525 | 0.00 | 0.00 |
| 282.32 | 0.81 | `23_06_2023_win_prize_B` | camp_3581 | Выиграй приз при любой покупке! | 308.25 | 0.82 | 525 | -0.01 | -1,482.18 |

* **Top Performing Campaign (`camp_3512`):** The loyalty special offer generated the highest incremental uplift (**22,738.59**), outperforming its CTR counterpart by **+27 percentage points** in response rate (66% vs. 39%) and achieving a significantly higher ARPPU (227 vs. 168).
* **Strong Discount Conversion (`camp_35367`):** The 5% discount mailing maintained a high baseline conversion rate of **78%**, delivering an incremental uplift of **10,767.68** over the CTR variant.
* **Gamification & Prize Draws (`camp_3581`):** Both A/B banner variations (`win_prize_A` and `win_prize_B`) achieved the highest overall ARPPU (**282–290**) and response rates (**81%–82%**), with Variant A slightly outperforming Variant B.
