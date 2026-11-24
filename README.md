# Портфолио аналитика данных — Софья Ерунова

## Обо мне
Junior аналитик данных с 5-летним опытом работы с большими массивами данных, региональной статистикой и управленческой отчётностью. Имею практический опыт сбора, валидации и очистки данных из 40+ источников, анализа показателей эффективности и подготовки аналитических материалов и презентаций для руководства.

В работе применяю **Python** (`Pandas`, `NumPy`, `Seaborn`, `Plotly`, `SciPy`), **SQL** (PostgreSQL), **Power BI** и **MS Excel** для исследовательского анализа данных (EDA), расчёта продуктовых и маркетинговых метрик, проведения A/B-тестов, ABC-анализа и построения дашбордов. 

📄 **[Моё резюме (CV.pdf)](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/CV.pdf)**

---

## Обзор проектов

### Python

* **[Amazon Pricing Factors and Buyer Demand Analysis](https://github.com/sofiaerunova/data-analyst-portfolio/tree/main/projects/amazon-sales-analysis)**  
  💻 [Код проекта (Amazon_sales.ipynb)](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/amazon-sales-analysis/Amazon_sales.ipynb)  
  * **Цель:** выявить ключевые драйверы пользовательской вовлечённости, оценить влияние глубины скидки и ценового сегмента на число отзывов и рейтинги товаров, а также исследовать структуру цен по категориям.
  * **Описание:** исследовательский анализ (EDA) и сегментация каталога из 1 000+ товаров Amazon с очисткой валютных и текстовых аномалий, выделением основных и подкатегорий, анализом спроса по ценовым диапазонам и построением интерактивных графиков.
  * **Навыки:** очистка и нормализация данных, сегментация, EDA, проверка статистических гипотез, визуализация данных.
  * **Инструменты:** Python, Pandas, Seaborn, Plotly, SciPy, SQLite3.
  * **Результаты:** определены лидеры по объёму и выручке (*Electronics*, *Computers & Accessories*, *Home & Kitchen*), показано, что 80% прибыли формируют три ключевых сегмента (*Home Theater & TV*, *Mobiles & Accessories*, *Kitchen & Appliances*), а пик покупок приходится на товары до ₹10k.

* **[Marketing Campaign A/B Testing & Analysis](https://github.com/sofiaerunova/data-analyst-portfolio/tree/main/projects/marketing-ab-test)**  
  💻 [Код проекта (marketing_AB.ipynb)](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/marketing-ab-test/marketing_AB.ipynb)  
  * **Цель:** оценить статистическую эффективность рекламной кампании и определить влияние показа рекламы на конверсию пользователей в покупку.
  * **Описание:** анализ датасета из 588 101 записи с разбивкой на тестовую (`ad`) и контрольную (`psa`) группы, проверкой выборок (A/A-тест), оценкой нормальности и равенства дисперсий, статистическими тестами и анализом динамики по дням недели и часам.
  * **Навыки:** A/B- и A/A-тестирование, статистический анализ, когортный/временной срез активности, формулировка продуктово-маркетинговых рекомендаций.
  * **Инструменты:** Python, Pandas, SciPy, Matplotlib, Seaborn.
  * **Результаты:** выявлены пиковые дни активности (вторник и суббота) и дневное окно 14:00–17:00 (с пиком в 15:00), подтверждена целесообразность масштабирования кампаний с учётом таргетинга по времени и ограничения частоты показов (`frequency capping`).

### SQL

* **[CRM Marketing Campaign Performance Analysis](https://github.com/sofiaerunova/data-analyst-portfolio/tree/main/projects/crm-marketing-sql-analysis)**  
  💻 [Код проекта (1.crm_marketing_analysis.sql)](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/crm-marketing-sql-analysis/1.crm_marketing_analysis.sql)  
  * **Цель:** оценить эффективность CRM-рассылок и промо-кампаний (включая сравнение базовых отправок и CTR-вариантов) по конверсии, монетизации и инкрементальному приросту.
  * **Описание:** многотабличный SQL-анализ по 5 таблицам CRM (`companing`, `sendings`, `response`, `sales`, `price`) с фильтрацией покупок в пределах 3-дневного окна атрибуции, расчётом **ARPPU**, **Response Rate**, разницы отклика (`delta`) и оценкой дополнительного эффекта (`privlecli`).
  * **Навыки:** написание сложных SQL-запросов и CTE, объединение таблиц, атрибуция по временным окнам, расчёт маркетинговых метрик и сравнительный анализ вариантов.
  * **Инструменты:** PostgreSQL, DBeaver, SQL.
  * **Результаты:** выделены наиболее результативные кампании — спецпредложение `camp_3512` дало наибольший инкрементальный прирост (+27 п.п. к отклику относительно CTR-варианта), а механика розыгрыша призов `camp_3581` обеспечила максимальный ARPPU (282–290) и конверсию 81–82%.

### Power BI

* **[Hogwarts Magic Shop — Sales, Marketing & Supplier Analytics](https://github.com/sofiaerunova/data-analyst-portfolio/tree/main/projects/hogwarts-sales-powerbi-dashboard)**  
  📊 [Скачать отчёт Power BI (.pbix)](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/hogwarts-sales-powerbi-dashboard/2.hogwarts-sales-powerbi.pbix)  
  * **Цель:** создать трёхстраничный интерактивный BI-дашборд для сквозного анализа продаж, маркетинговых акций, клиентских сегментов и надёжности поставщиков за 2022–2025 годы.
  * **Описание:** построение модели «звезда» (`sales`, `sale_details`, `products`, `customers`, `campaigns`, `suppliers` и таблица `Calendar`), очистка данных в Power Query, написание DAX-мер и визуализация ключевых метрик по 20 000 заказам и 65 000+ проданным единицам.
  * **Навыки:** моделирование данных (Star Schema), ETL в Power Query, написание DAX-мер, проектирование дашбордов и юнит-/маркетинговой аналитики.
  * **Инструменты:** Power BI Desktop, Power Query, DAX.
  * **Результаты:** зафиксирована выручка 7,43M галлеонов (+32% YoY), показано, что мётлы дают >60% выручки, промо-кампании приносят 25% дохода при ROMI 103 (не меняя средний чек 370 vs 372), и выявлены лидеры по надёжности среди поставщиков.

### Excel

* **[Global YouTube Statistics — Excel Analytics & Dashboard](https://github.com/sofiaerunova/data-analyst-portfolio/tree/main/projects/youtube-stats-excel-dashboard)**  
  📊 [Скачать книгу Excel (.xlsx)](https://github.com/sofiaerunova/data-analyst-portfolio/blob/main/projects/youtube-stats-excel-dashboard/Global%20YouTube%20Statistics.xlsx)  
  * **Цель:** провести комплексный анализ монетизации, активности, географии, когорт и 30-дневного роста подписчиков топ-каналов YouTube и собрать наглядный дашборд в Excel.
  * **Описание:** очистка датасета из 995 каналов, расчёт метрик дохода и вовлечённости, сегментация по когортам создания и активности (`Active`), построение сводных таблиц с ABC-анализом категорий, топом стран, когортами и плоской таблицей топ-10 быстрорастущих каналов через `ИНДЕКС` и `ПОИСКПОЗ`.
  * **Навыки:** очистка данных и feature engineering, сводные таблицы, ABC- и когортный анализ, формулы поиска/логики, построение дашбордов.
  * **Инструменты:** Microsoft Excel (Excel Online), сводные таблицы, формулы (`ИНДЕКС`, `ПОИСКПОЗ`, `ЕСЛИ`, `СУММ`), диаграммы.
  * **Результаты:** по 945 активным каналам суммарный годовой доход составил ~$3,55B; категории группы A дают ~79% выручки, лидируют США (305 каналов) и Индия (164), а когорта `2021+` показывает самый высокий средний годовой доход на канал (~$5,88M) и средний темп прироста за 30 дней (~2,22%).

---

## Образование

* **Российская академия народного хозяйства и государственной службы при Президенте Российской Федерации (РАНХиГС), Москва** — Высшее образование (2021), направление *«Государственное и муниципальное управление»*.
* **Профессиональная переподготовка по анализу данных** — *Аналитик данных / Специалист по большим данным* (ООО «1Т», 2024).

---

## Контакты

* **Email:** [sofia.erunova@gmail.com](mailto:sofia.erunova@gmail.com)
* **Facebook:** [https://www.facebook.com/share/1FN1HrYZgs/](https://www.facebook.com/share/1FN1HrYZgs/)
* **GitHub:** [https://github.com/sofiaerunova](https://github.com/sofiaerunova)
