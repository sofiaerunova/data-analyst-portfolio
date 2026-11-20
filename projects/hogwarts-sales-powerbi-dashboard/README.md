# Hogwarts Magic Shop — Sales, Marketing & Supplier Analytics (Power BI)

An interactive 3-page **Power BI** business intelligence dashboard analyzing 4 years of retail operations (2022–2025) for a wizarding goods store: revenue dynamics, product performance, promotional campaign ROI, customer demographics, and supplier reliability[cite: 12, 13, 14].

🔗 **[View Full PDF Report](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/hogwarts-sales-powerbi-dashboard/hogwarts-sales-dashboard.pdf)**

---

## 📌 Project Overview

The project is built on a relational synthetic retail dataset modeling a wizarding goods store (**20,000 orders** and **65,000+ sold units** across **2022–2025**)[cite: 12, 13, 14]:

* **`sales` (Orders / Fact Table):** Transaction-level headers including order ID, purchase date (`02.01.2022` – `31.12.2025`), customer ID, payment method (`Gringotts Credit`, `Galleons`, `Barter`), and optional promotional campaign ID (`campaign_id`)[cite: 12, 13, 14].
* **`sale_details` (Order Line Items / Fact Table):** Granular line-item records linking orders to products, quantities sold, and revenue spent in galleons[cite: 12, 13, 14].
* **`products` (Product Catalog):** Wizard merchandise across 5 categories (`Broom`, `Kid Broom`, `Quidditch Wear`, `Accessory`, `Supplements`), item prices, supplier links, and flight/handling attributes (`speed`, `control`) for brooms[cite: 12, 13, 14].
* **`customers` (Customer Profiles):** ~1,000 active buyers with demographic and wizarding attributes such as Hogwarts house (`Gryffindor`, `Slytherin`, `Ravenclaw`, `Hufflepuff`), year/course, occupation (`Herbologist`, `Dragon Keeper`, `Healer`, `Quidditch Player`, `Ministry of Magic Employee`, `Auror`), and customer segment (`adult` vs. `student`)[cite: 12, 14].
* **`campaigns` (Marketing Campaigns):** Promotional initiatives (`Back to Hogwarts Sale`, `Holiday Broom Fest`, `Quidditch World Cup Promo`) with annual marketing budgets (`spend`) and active periods[cite: 13].
* **`suppliers` (Suppliers):** Vendor directory containing supplier names, delivery lead time in days (`lead_time_days`), and reliability ratings (`reliability`)[cite: 14].

---

## 📊 Dashboard Structure

### Page 1: Sales Overview (`Обзор продаж`)
* **KPI Cards:** Total Revenue (**7.43M** galleons), Total Orders (**20K**), Total Units Sold (**65K**), Average Order Value (**372**), YoY Revenue Growth (**+32%**)[cite: 12].
* **Revenue & Units Trend:** Monthly combo chart tracking revenue and sales volume from September 2022 to September 2025[cite: 12].
* **Category & Payment Breakdown:** Horizontal bar chart by product category (`Broom` leads with **3.5M**, followed by `Kid Broom` and `Quidditch Wear` at **1.1M** each) and a donut chart showing an even split across payment methods (`Gringotts Credit` 33.96%, `Galleons` 33.36%, `Barter` 32.68%)[cite: 12].
* **Top-10 Products Table:** Ranked by revenue with price and units sold (`Tesla Thunder`, `Ford Firebolt`, and `Nissan Nimbus` lead revenue)[cite: 12].

### Page 2: Marketing Campaign Effectiveness (`Эффективность маркетинговых компаний`)
* **Promo KPIs:** Promo Revenue (**1.9M** / **25%** share of total revenue), Total Campaign Spend (**18K**), Overall ROMI (**103**)[cite: 13].
* **Campaign Performance & ROMI:** Breakdown across three seasonal campaigns (`Back to Hogwarts Sale`, `Holiday Broom Fest`, `Quidditch World Cup Promo`) by year, spend, orders, and ROMI[cite: 13].
* **Promo vs. Organic Behavior:** Comparison of Average Order Value (**370** promo vs. **372** non-promo) and Units Per Transaction (**3.23** vs. **3.28**)[cite: 13].

### Page 3: Customers & Suppliers (`Клиенты и поставщики`)
* **Customer Metrics:** **1.0K** active buyers generating **7K** average revenue per customer; segment split between **Adults (79.79%)** and **Students (20.21%)**[cite: 14].
* **Hogwarts Houses & Occupations:** Revenue and AOV across `Gryffindor`, `Slytherin`, `Ravenclaw`, and `Hufflepuff`, plus top occupations (`Herbologist`, `Dragon Keeper`, `Healer`)[cite: 14].
* **Supplier Quadrant (Scatter Chart):** Evaluates suppliers by **Average Lead Time (days)** vs. **Average Reliability** (`Firebolt Consortium` and `Nimbus Racing Broom Co.` lead in speed and reliability, while `Comet Trading Ltd.` shows longer delivery times and lower reliability)[cite: 14].

---

## 🗂 Data Model & DAX Highlights

* **Star Schema:** Fact tables (`sales`, `sale_details`) connected to dimension tables (`products`, `customers`, `campaigns`, `suppliers`) and a custom **`Calendar`** table (`1:*` relationships)[cite: 12, 13, 14].
* **Data Cleaning (Power Query):** Standardized decimal separators and converted `reliability` from text to decimal type; handled missing `supplier_id` values[cite: 14].
* **Key DAX Measures & Calculated Columns:**
  * `Customer Segment` (`adult` vs. `student`) and `Sale Type` (`По акции` vs. `Без акции`)[cite: 12, 13].
  * Promo Revenue & Share: `CALCULATE([Revenue], FILTER(sales, NOT ISBLANK(sales[campaign_id]) && sales[campaign_id] <> ""))`[cite: 13].
  * `ROMI`, `YoY Revenue Growth`, `Average Order Value`, `Units Per Transaction`, `Avg Orders per Day/Month`, and supplier performance averages[cite: 12, 13, 14].

---

## 📈 Key Findings

1. **Brooms Drive Core Revenue:** Standard and kid brooms account for over **60% of total revenue (4.6M of 7.43M)**, led by high-ticket models like *Tesla Thunder* (700 galleons) and *Ford Firebolt* (500 galleons)[cite: 12].
2. **Promotions Drive Volume, Not Basket Size:** Marketing campaigns generate **25% of revenue** with strong overall ROMI (**103**, peaking at **155** for *Back to Hogwarts Sale*), yet AOV (**370 vs. 372**) and basket size (**3.23 vs. 3.28**) remain unchanged — introducing tiered thresholds (e.g., *"Spend 450+ galleons for a bonus"*) can lift basket size[cite: 13].
3. **Supplier Consolidation Opportunity:** *Firebolt Consortium* (5-day lead time, 0.98 reliability) and *Nimbus Racing Broom Co.* (7 days, 0.95) significantly outperform *Comet Trading Ltd.* (12 days, 0.80), making them priority partners for high-demand inventory[cite: 14].

---

## 🛠 Tools Used
* **Power BI Desktop** (Power Query, Data Modeling, DAX, Interactive Slicers & Visuals)

---

* **Author:** Sofia Erunova
