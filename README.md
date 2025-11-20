# 🚗 India EV Market Analysis (2022–2024) – Power BI + SQL + DAX

### 📊 An end-to-end Data Analytics & Market Research Project for AtliQ Motors

---

## 🧩 Project Overview

India’s Electric Vehicle (EV) industry is scaling rapidly. To assess whether AtliQ Motors should expand into the Indian EV market, I conducted a complete EV adoption and competitive landscape analysis across FY 2022–2024.

This project analyzes:

- **57.22 million total vehicles sold**  
- **2.066 million EVs sold**  
- **3.61% EV penetration (EVRP)**  
- **93.91% EV Sales CAGR**  
- **70.76% EV Penetration CAGR**

Goal:  
**“Identify EV-ready states, high-growth makers, and strategic expansion opportunities for AtliQ Motors.”**

---

## 🧠 Objectives

- Analyze EV sales trends (FY22–FY24)  
- Identify top EV-ready states based on penetration  
- Evaluate growth hotspots using CAGR  
- Benchmark 20+ EV makers  
- Provide launch recommendations for AtliQ Motors  

---

## 📂 Datasets Used

| Dataset | Description |
|--------|-------------|
| `electric_vehicle_sales_by_state.csv` | State-wise EV + total vehicle sales |
| `electric_vehicle_sales_by_makers.csv` | Maker-wise EV sales |
| `dim_date.csv` | Fiscal year, quarters, date dimension |

---

## 🛠 Tools & Techniques

- **Power BI** (DAX, visualizations, modeling)  
- **Power Query** (ETL, cleaning)  
- **MySQL** (metric validation)  
- **Excel** (initial verification)  
- **DAX** (CAGR, EVRP, ranking, YoY%)

---

## 🏗 Data Modeling

Built using a **Star Schema**:

- Fact Tables:  
  - EVSales_State  
  - EVSales_Maker  

- Dimension Tables:  
  - dim_date  
  - dim_makers  
  - dim_states  

- Included field parameters for:
  - Top/Bottom N  
  - CAGR vs Aggregate toggle  
  - Category & page-level comparisons  


![image alt](https://github.com/SubhojeetSarkar045/EV_Market_Analysis/blob/54a31a3a46a067aed18aee6fa7f847706956e67b/powerbi/screenshot/Model%20View.png)

---

## 📏 Key Metrics (DAX)

- Total EV Sales  
- Total Vehicle Sales  
- EV Penetration % (EVRP)  
- EV Sales CAGR  
- Penetration CAGR  
- State YoY %  
- Maker YoY %  
- Ranking (Top/Bottom)  
- Vehicle Category Performance  

...and many more.

---

## 📊 Dashboard Preview

Pages included:

1. **Overview**

![image alt](https://github.com/SubhojeetSarkar045/EV_Market_Analysis/blob/54a31a3a46a067aed18aee6fa7f847706956e67b/powerbi/screenshot/Overview.png)

2. **State Analysis**

![image alt](https://github.com/SubhojeetSarkar045/EV_Market_Analysis/blob/54a31a3a46a067aed18aee6fa7f847706956e67b/powerbi/screenshot/States%201.png)

![image alt](https://github.com/SubhojeetSarkar045/EV_Market_Analysis/blob/54a31a3a46a067aed18aee6fa7f847706956e67b/powerbi/screenshot/States%202.png)
   
3. **Maker Analysis**  

![image alt](https://github.com/SubhojeetSarkar045/EV_Market_Analysis/blob/54a31a3a46a067aed18aee6fa7f847706956e67b/powerbi/screenshot/Makers%201.png)

![image alt](https://github.com/SubhojeetSarkar045/EV_Market_Analysis/blob/54a31a3a46a067aed18aee6fa7f847706956e67b/powerbi/screenshot/Makers%202.png)


---

## 🔍 Key Insights (2022–2024)

### ⭐ 1. EV Adoption Snapshot
- **57.22M total vehicles sold**  
- **2.066M EVs sold**  
- **EVRP: 3.61%**  
- **EV Sales CAGR: 93.91%**  
- **EV Penetration CAGR: 70.76%**

India is in early but rapidly accelerating EV adoption phase.

---

### ⭐ 2. Top EV-Ready States (EV Penetration %)

| State | EVRP |
|--------|-------|
| Goa | **9.84%** |
| Karnataka | **7.84%** |
| Delhi | **6.76%** |
| Kerala | **6.64%** |
| Maharashtra | **6.49%** |

---

### ⭐ 3. Leading EV Makers (2W + 4W)

| Maker | EV Sales |
|--------|-----------|
| Ola Electric | **489K** |
| TVS | **273K** |
| Ather | **204K** |
| Hero Electric | **170K** |

Luxury segment growth: BMW, Volvo, BYD (high CAGR + low base).

---

### ⭐ 4. Seasonality Insight
EV sales peak during **Oct–Dec (Q3)** every fiscal year.

Perfect for planning product launches.

---

This dashboard empowers AtliQ Motors to confidently choose the top EV-ready states, product segments, and timing for launching their EV lineup in India.

---

## 🚀 Recommendations for AtliQ Motors

### 1️⃣ Market Entry Strategy  
Launch in **Goa, Karnataka, Delhi, Kerala, Maharashtra**.

### 2️⃣ Product Strategy  
Prioritize **2-wheeler EVs** for initial market penetration.

### 3️⃣ Timing Strategy  
Launch during **Q3 (Oct–Dec)** for faster traction.

### 4️⃣ Infrastructure Strategy  
Invest in charging networks in high-CAGR emerging states.

### 5️⃣ Competitive Strategy  
Benchmark OLA, TVS & Ather for pricing and positioning.


---

| Recommendation | Why | Expected Business Impact |
|--------|-----------|-----------|
| Launch in Goa, Karnataka, Delhi, Kerala, Maharashtra | Highest EV penetration & growth | Fastest adoption, lower CAC, early brand dominance |
| Begin with 2W EV Models | 2W EVs dominate in India | Maximum volume capture, lower production & distribution cost |
| Launch During Q3 (Oct–Dec) | Peak consumer spending & festival season | 25–30% higher initial sales |
| Prioritize high-CAGR emerging states (Meghalaya, Gujarat) | High momentum for future market | Establish early presence, gain long-term loyalty |
| Benchmark Ola, Ather, TVS on pricing & features | Market dominated by competitive 2W players | Competitive positioning, smart pricing strategy |
| Build charging infra partnerships in Tier-1 cities | Infra gaps restrict adoption | Unlocks EV sales growth in new clusters |

---

## 🧪 SQL Component

The `/sql` folder contains:

- Primary research questions    
- KPI queries (CAGR, EVRP, state/maker aggregation)  
- Join-based validation scripts

All MySQL results were cross-referenced with Power BI measures.

---

## 👨‍💻 About Me

**Subhojeet Sarkar**  
Data Analyst – Power BI | SQL | Excel  
Focused on EV analytics, business intelligence & storytelling.

- LinkedIn: *([Subhojeet Sarkar](https://www.linkedin.com/in/itssubhojeetsarkar/))*  

---

## ⭐ License

This project uses publicly available data from Codebasics Resume Challenge #12.  
Created purely for learning and portfolio demonstration.

---

“**Analytics doesn’t just show data, it shows direction.**”
