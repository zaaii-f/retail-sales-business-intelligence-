# 🏪 End-to-End Retail Sales Business Intelligence Project

An enterprise-grade business intelligence and data analytics solution engineering a full data pipeline across **Excel**, **Power BI**, **Python**, and **SQL Server** to audit, model, and visualize corporate retail transactions.

---

## 💎 Project Portfolios & Strategic Analyses

### 1️⃣ Corporate Financial Performance Analysis (Microsoft Excel)
![Excel Executive Dashboard](dashboard excel.jpg)
This corporate executive dashboard bridges macro financial tracking with granular cross-dimensional slicing. Built on a modernized, low-fatigue dark theme, it serves as the strategic visual baseline for core enterprise KPIs. By auditing historical transaction ledger flows, the dashboard uncovers a massive **SAR 10.08 Billion in Total Revenue** driving a highly stable **SAR 3.78 Billion in Net Profit**—retaining a robust **37% corporate profit margin** across **1,998 commercial orders**. Key performance matrices reveal that the **Eastern and Central regions (Dammam and Riyadh)** serve as our core revenue strongholds (generating nearly ~SAR 1.9M each), while **Food and Office segments** command absolute consumer volume velocity.

---

### 2️⃣ Multi-Dimensional Interactive Intelligence (Microsoft Power BI)
This analytical suite deploys advanced dynamic filtering, cross-filtering matrices, and recursive DAX modeling across multiple granular management tiers:
* **The Macro Lens (`powerbi.jpg`):** Tracks the global pipeline trend showing a historic end-of-year apex in **December at nearly SAR 1,000K**, followed by a cyclical stabilization and a noticeable summer contraction dipping to **SAR 700K**. It highlights that account client **Carrefour** captures supreme channel velocity at **SAR 2.6M**, while sales rep **Yahia** dominates individual pipeline conversions at **SAR 2.2M**.
* **The Seasonal Deep-Dive (`2004 powerbi.jpg`):** Segments fiscal parameters specifically for **2004**, isolating **SAR 2.76M in Top-line Revenue**, a net profit of **SAR 1.04M**, and a transaction volume velocity of **532 institutional orders**.
* **The Regional Hub Audit (`jeddahpowerbi.jpg`):** Isolates the Western territory market ecosystem exclusively for **Jeddah Hub**. This target analysis extracts a localized regional slice of **SAR 895.45K in Sales yielding SAR 315.67K in Profit** at a 30% margin, with **Lulu Hypermarket** emerging as the dominant local accounts distribution driver (**SAR 0.26M**).

---

### 3️⃣ Automated ETL & Statistical Exploration (Python - Pandas & Plotly)
An automated program script built using a structured **Jupyter Notebook (`Zainab_Python_Analysis.ipynb`)** to process raw transactional data feeds. The ingestion pipeline begins with strict automated Data Wrangling, handling missing cells, programmatically fixing anomalies (such as auditing and normalizing manual data-entry errors like 'Mjeeed' to 'Mjeed' and 'Lulu Hyper' to 'Lulu'), and applying mathematical imputation to ensure absolute data integrity. Advanced Exploratory Data Analysis (EDA) leverages Plotly to render interactive cross-category heatmaps, sample scatter-plots mapping Sale-vs-Profit velocity, and transaction distribution pies, mathematically confirming that while **Toys** possess a smaller raw sales volume, they command significantly higher per-unit profit margin efficiencies.

---

### 4️⃣ Enterprise Relational Data Modeling (SQL Server - T-SQL Pipelines)
A high-performance query script file **(`Zainab_SQL.sql`)** built to construct complex database analytical engines. The architecture implements optimized **Common Table Expressions (CTEs)** and advanced **Window Functions** to deliver sub-second multi-tier aggregation:
* **Query 1:** Calculates localized regional profitability matrixing via structured `GROUP BY` and `ORDER BY` logic to instantly rank markets by net profitability.
* **Query 2:** Engineers partition-based window ranking queries using `RANK() OVER (PARTITION BY prod ORDER BY SUM(Sale) DESC)` to programmatically isolate and crown the #1 top-performing sales representative for every independent product category.
* **Query 3:** Constructs a time-series growth tracking pipeline leveraging relational `LAG()` offsets to calculate strict **Month-over-Month Growth Percentages (MoMGrowthPct)**, empowering corporate directors to instantly monitor performance acceleration or deceleration across sequential fiscal intervals.

---
_🛡️ Certified and securely maintained under the MIT License framework by Zainab._
