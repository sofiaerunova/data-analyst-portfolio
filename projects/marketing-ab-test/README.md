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
1. **Statistically Significant Lift:** Users in the `ad` group demonstrated a statistically significant higher conversion rate compared to the `psa` control group ($p < 0.05$).
2. **Frequency Analysis:** Higher ad exposure correlates with increased conversion rates up to a certain frequency threshold.

---
*Author: Sofia Erunova*
