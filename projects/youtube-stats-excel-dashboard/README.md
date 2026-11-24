# Global YouTube Statistics — Excel Analytics & Dashboard

🔗 **[View Full PDF Report](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/youtube-stats-excel-dashboard/Global_YouTube_Statistics.pdf)**
📊 **[Download Excel Workbook (.xlsx)](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/youtube-stats-excel-dashboard/Global%20YouTube%20Statistics.xlsx)**

## 📌 Project Overview
End-to-end data analytics and visualization project built in **Microsoft Excel (Excel for the web)** based on the *Global YouTube Statistics* dataset. The goal is to evaluate channel monetization, content activity, geographic concentration, cohort dynamics, and 30-day subscriber growth among top YouTube creators.

Key highlights across **945 active channels** (`is_active_content = Active`):
- **Total estimated annual revenue:** ~$3.55B (`$3,546,475,431`)
- **Total video views:** ~10.03T (`10,027,318,018,251`)
- **Average annual revenue per active channel:** ~$3.75M (`$3,752,884`)

## 📁 Dataset

- **Source file:** `Global YouTube Statistics.csv` (995 top YouTube channels, 28 initial attributes including subscribers, video views, uploads, estimated monthly/yearly earnings, 30-day subscriber growth, creation year/date, category, channel type, and country).
- **Workbook structure:**
  - `raw_data` / `YouTube_data` — raw source data kept intact;
  - `clean_data` — cleaned dataset with calculated metrics, activity flag, and segmentation fields;
  - `analysis` — PivotTables, category ABC analysis, top-10 countries, creation cohorts, and top-10 fastest-growing channels;
  - `dashboard` — final dashboard with KPI cards, charts, and key takeaways.

## 🛠 Methodology & Tools
- **Tools:** Microsoft Excel (Excel Online), PivotTables, logical & lookup formulas (`ЕСЛИ`, `ИЛИ`, `СУММ`, `ИНДЕКС`, `ПОИСКПОЗ`, `ЕСЛИОШИБКА`), conditional formatting, charts.
- **Data Cleaning & Feature Engineering (`clean_data`):**
  - Standardized missing/text placeholders (`nan`, `NaN`, blanks) in `category_clean` (falling back to `channel_type` and then `Unknown`) and `country_clean` (`Unknown`).
  - Created content activity flag `is_active_content` (`Active` vs. `Zero_Views_or_Uploads`) to isolate channels with positive views and uploads.
  - Calculated monetization and engagement metrics: `avg_monthly_earnings`, `avg_yearly_earnings`, `views_per_upload`, `views_per_sub`, and `sub_growth_rate_30d`.
  - Grouped channels into creation cohorts (`channel_age_cohort`: `До 2010`, `2010–2015`, `2016–2020`, `2021+`).

## 🛠️ Project Implementation Stages
1. **Data Import & Audit:** Loaded `Global YouTube Statistics.csv` into the workbook and audited missing values, zero-activity entries, and formatting issues.
2. **Cleaning & Calculated Fields:** Built `clean_data` with standardized category/country fields, cohort buckets, and unit/growth metrics.
3. **Analytical Aggregations (`analysis`):**
   - Built a category PivotTable sorted by total yearly earnings with revenue share, cumulative share, and **ABC classification** (`A <= 80%`, `B <= 95%`, `C > 95%`).
     <img width="1182" height="634" alt="2026-11-24_13-07-21" src="https://github.com/user-attachments/assets/267c98f3-2b35-4555-8887-5ed604144fd4" />

   - Built a Top-10 countries PivotTable for active channels.
     <img width="563" height="336" alt="2026-11-24_13-08-58" src="https://github.com/user-attachments/assets/0ca40280-4a6b-41b0-81d6-c688c2b42d15" />

   - Built a cohort PivotTable tracking channel count, 30-day subscriber growth rate, and average annual revenue per channel.
     <img width="562" height="297" alt="2026-11-24_13-09-55" src="https://github.com/user-attachments/assets/928ac8f7-717a-4285-a894-516e5ae85ded" />

   - Constructed a flat Top-10 fast-growing channels table (`subscribers_for_last_30_days`) using `ИНДЕКС` and `ПОИСКПОЗ` to avoid nested row stepping in Excel for the web.
     <img width="837" height="367" alt="2026-11-24_13-10-49" src="https://github.com/user-attachments/assets/f9dd510e-b9b5-4e1a-bb7d-ae379537e698" />

5. **Dashboard Assembly (`dashboard`):** Designed KPI summary blocks, bar/column/line charts, and structured takeaways.
<img width="819" height="232" alt="2026-11-24_13-11-57" src="https://github.com/user-attachments/assets/5acf7542-4117-4d51-a913-11112576e96b" />
<img width="859" height="433" alt="2026-11-24_13-12-43" src="https://github.com/user-attachments/assets/765df164-3223-4503-9875-7869d3e3adb9" />
<img width="857" height="492" alt="2026-11-24_13-13-13" src="https://github.com/user-attachments/assets/3fba739b-beb7-4334-b6c7-b4d02cd45038" />
<img width="1483" height="317" alt="2026-11-24_13-15-43" src="https://github.com/user-attachments/assets/1b44d65d-f74b-4219-ac24-b6b7fdcd4fb6" />


## 📈 Key Findings
- **High Revenue Concentration (ABC Analysis):** Top categories in **Group A** (`Entertainment` at ~28.2%, `Music` at ~18.6%, `People & Blogs` at ~13.0%, `Comedy` at ~8.3%, `Film & Animation` at ~6.1%, and `People` at ~4.9%) generate roughly **79.0%** of total annual revenue among active channels, while **Group B** (`Education`, `Gaming`, `News & Politics`, `Shows`) brings cumulative share to ~93.5%.
- **Geographic Dominance:** The **United States** (305 active channels, ~$1.11B annual revenue) and **India** (164 active channels, ~$805M annual revenue) lead the global landscape by a wide margin, followed by `Brazil` (61) and `United Kingdom` (43).
- **Cohort Dynamics:** The `2010–2015` cohort has the largest volume of active channels (431), whereas newer channels in the `2021+` cohort demonstrate higher average annual revenue per channel (~$5.88M) and higher average 30-day growth rate (~2.22%) in this top sample.
- **Fastest 30-Day Growth Leaders:** Absolute subscriber additions over 30 days are led by mega-creators and viral/Shorts-driven formats such as `MrBeast` (+8.0M), `DaFuq!?Boom!` (+6.7M, ~34.18% growth rate), and `Jess No Limit` (+5.5M).

---
- Author: Sofia Erunova
