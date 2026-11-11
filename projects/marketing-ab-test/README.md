# 📊 Marketing Campaign A/B Testing & Analysis

## 📌 Project Overview
This project focuses on evaluating the effectiveness of a marketing ad campaign using statistical hypothesis testing. The goal is to analyze user conversion rates and determine whether displaying advertisements significantly impacts user purchases.

## 📁 Dataset
* **Source:** Marketing A/B testing dataset (`588,101` rows, `7` columns).
* **Key Features:**
  * `user id`: Unique user identifier
  * `test group`: Group flag (`ad` — exposed to ads, `psa` — exposed to public service announcements/control)
  * `converted`: Binary target variable (`True` / `False`)
  * `total ads`: Total number of ads seen by user
  * `most ads day` & `most ads hour`: Day of week and hour with maximum ad activity

## 🛠 Methodology & Tools
* **Language & Libraries:** Python (`Pandas`, `SciPy`, `Matplotlib`, `Seaborn`)
* **Exploratory Data Analysis (EDA):** Checking distributions, missing values, duplicates, and key metrics.
* **A/A Testing:** Split-sample verification using t-tests to confirm baseline consistency between control sub-groups.
* **Statistical Testing:**
  * Normality Check (`Shapiro-Wilk test`)
  * Homogeneity of Variance (`Levene's test`)
  * Group Comparison (`Student's t-test`)

## 📈 Key Findings

1. **Format Comparison (`ad` vs `psa`):** Commercial advertisements (`ad`) attract audience attention slightly more effectively than public service announcements (`psa`). However, social ads also generate a stable response and meaningful conversions, proving their value as a communication tool.
2. **Volume vs. Interest:** The substantial difference in total views between commercial and social campaigns is primarily driven by disparities in their placement volume and frequency, rather than an inherent lack of audience interest in social ads.
3. **Temporal Patterns:** 
   * **Days of the Week:** The most active days for viewing and interacting with any type of advertisement are **Tuesday** and **Saturday**.
   * **Peak Hours:** The primary volume of views and conversions is concentrated during the daytime interval from **14:00 to 17:00**, peaking sharply at **15:00**.
4. **Factor Significance:** Conversion rates are sensitive to temporal factors (day of the week and hour of the view), whereas other database parameters show minimal impact on this metric.

## 💡 Business Recommendations

* **Scale Investments:** Marketing investments are economically justified and yield measurable results; campaigns should be continued and scaled.
* **Timing & Day Targeting:** Reallocate the advertising budget to intensify ad delivery during peak hours (especially around **15:00**) and on high-activity days (**Tuesday** and **Saturday**).
* **Frequency Capping:** Given the wide spread and long tail in the `total ads` metric, implement frequency caps per unique user to prevent banner blindness and optimize marketing spend.

---
* **Author:** Sofia Erunova
