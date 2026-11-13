# 🛒 Amazon Pricing Factors and Buyer Demand Analysis (EDA & Segmentation)

## 📌 Project Overview
* **Context:** The dataset contains information on 1,000+ Amazon products (including categories, actual and discounted prices, discount percentages, user ratings, and review counts).
* **Objective:** Identify key drivers of buyer engagement, evaluate the impact of discount magnitude on review counts and ratings, and explore the pricing structure across product categories.
* **Primary Hypothesis ($H_1$):** Discount depth (`discount_percentage`) and product price segment have a statistically significant impact on customer engagement (`rating_count`), with deeply discounted items in the *Computers & Accessories* category generating the highest volume of reviews.

---

## 📁 Dataset
The dataset includes the following key columns:
* `product_id` / `product_name` — Product ID and title
* `category` — Original hierarchical product category
* `discounted_price` / `actual_price` — Discounted price and original price
* `discount_percentage` — Discount percentage
* `rating` / `rating_count` — Product rating and number of reviews/ratings
* `user_id` / `user_name` — User IDs and names who left reviews
* `review_id` / `review_title` / `review_content` — Review details (ID, title, text)
* `img_link` / `product_link` — Links to images and the official website

---

## 🛠 Methodology & Tools
* **Language:** Python
* **Libraries:** 
  * `Pandas` — data cleaning, transformation, grouping, and aggregation
  * `Plotly Express / Graph Objects` — interactive visualization
  * `SciPy` — statistical analysis and hypothesis testing
  * `SQLite3` — database operations (where applicable)

---

## 🛠️ Project Implementation Stages

1. **Data Preparation & Preprocessing:**
   - Import required libraries (`Pandas`, `Plotly`, `SciPy`) and load data.
   - Clean currency symbols (`₹`) and thousand separators from price columns, converting them to numeric types (`float64`).
   - Handle missing values and anomalies (such as invalid characters in ratings like `'|'`, verified via official links).
   - Normalize and split complex categories (`category`) into `main_category` and `sub_category`.
   - Create auxiliary tables and features (`rating_category`, `discount_sum`, normalizing user lists and orders).

2. **Exploratory Data Analysis (EDA):**
   - Analyze price distributions and discount sizes.
   - Investigate product category popularity (led by *Electronics*, *Computers & Accessories*, *Home & Kitchen*).
   - Evaluate relationships between ratings, review counts (`rating_count`), and discount depths.

3. **Visualization:**
   - Interactive charts and dashboards built using `Plotly`.

---

## 📈 Key Findings

* **Price Segments and Demand:** Most products on the platform are concentrated in the affordable price segment; however, high discount depth (`discount_percentage` > 50%) acts as a powerful catalyst for buyer activity (`rating_count`).
* **Category Popularity:** The highest volume of assortment and user engagement is recorded in computer accessories and mobile subcategories (*Accessories & Peripherals*, *Mobiles & Accessories*).
* **Quality and Ratings:** The vast majority of products have high ratings (ranging from 4.0 to 4.8), indicating overall customer satisfaction given an appropriate price-to-discount ratio.

---

* **Author:** Sofia Erunova
