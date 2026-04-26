# 📊 Data Analytics Teaching Dataset

> A comprehensive, classroom-ready Excel workbook designed to teach data analytics concepts through hands-on practice with realistic e-commerce data.

---

## 📌 Overview

This project provides a structured Excel-based teaching resource for data analytics courses. It includes 100 rows of realistic e-commerce sales data, pre-built statistical summaries, guided exercises across three difficulty levels, and a full data dictionary — everything an instructor or self-learner needs to master Excel-based data analytics.

---

## 📁 File Structure

```
data_analytics_teaching_dataset.xlsx
├── Raw Dataset          # 100 e-commerce orders with live formulas
├── Summary Statistics   # KPIs and regional breakdowns
├── Exercises            # 15 structured practice tasks
└── Data Dictionary      # Column definitions and use cases
```

---

## 🗂️ Sheet Descriptions

### 1. Raw Dataset
The core dataset containing **100 simulated e-commerce orders** across 12 columns.

| Column | Type | Description |
|---|---|---|
| Order ID | Text | Unique order identifier (e.g., ORD-1001) |
| Customer Name | Text | Full name of the customer |
| Region | Text | Sales region — East, West, North, South |
| Product Category | Text | Broad category (Electronics, Clothing, etc.) |
| Product Name | Text | Specific product sold |
| Units Sold | Number | Quantity ordered |
| Unit Price ($) | Currency | Price per unit |
| Revenue ($) | Formula | `Units Sold × Unit Price` |
| Discount (%) | Number | Percentage discount applied |
| Net Revenue ($) | Formula | `Revenue × (1 − Discount%)` |
| Order Date | Date | Date of order (YYYY-MM-DD) |
| Delivery Days | Number | Days taken for delivery |

**Features:** Auto-filter enabled · Freeze panes on row 3 · Alternating row formatting

---

### 2. Summary Statistics
Pre-built KPI summary using core Excel statistical functions, including:

- `COUNTA` — Total order count
- `SUM` — Total and net revenue
- `AVERAGE` — Average order value, discount, delivery time
- `MAX` / `MIN` — Revenue extremes
- `MEDIAN` — Median order value
- `STDEV` — Revenue standard deviation
- `SUMIF` — Revenue broken down by region

---

### 3. Exercises
**15 guided tasks** across three difficulty levels:

#### 🟢 Beginner
1. Sort dataset by Revenue (highest to lowest)
2. Use AutoFilter to isolate a specific region
3. Count orders by category using `COUNTIF`
4. Calculate category revenue using `SUMIF`
5. Find the highest-value order using `MAX` + `INDEX/MATCH`

#### 🟡 Intermediate
6. Build a Pivot Table by Region and Category
7. Calculate regional average discount with `AVERAGEIF`
8. Add a "Profit Tier" column using nested `IF`
9. Create a Bar Chart comparing regional revenue
10. Build a product lookup using `VLOOKUP` / `XLOOKUP`

#### 🔴 Advanced
11. Analyse monthly revenue trends using `TEXT` + `SUMIF`
12. Highlight top 10 orders with Conditional Formatting
13. Build an interactive dashboard with Slicers + PivotChart
14. Compute correlation between Units Sold and Discount using `CORREL`
15. Identify repeat buyers using `COUNTIF` on customer names

---

### 4. Data Dictionary
A reference sheet documenting every column with its data type, description, example value, and suggested analytics use case — ideal for student onboarding.

---

## 🎯 Learning Objectives

By working through this dataset, students will be able to:

- Navigate and manipulate large tabular datasets in Excel
- Apply core functions: `SUM`, `AVERAGE`, `COUNTIF`, `SUMIF`, `AVERAGEIF`, `IF`, `VLOOKUP`, `XLOOKUP`, `CORREL`, `MEDIAN`, `STDEV`
- Build and interpret Pivot Tables and Pivot Charts
- Create data visualisations (bar charts, line charts)
- Use Conditional Formatting for data-driven highlighting
- Perform time-series analysis on date fields
- Design basic interactive dashboards with slicers

---

## 🚀 Getting Started

1. **Download** `data_analytics_teaching_dataset.xlsx`
2. **Open** in Microsoft Excel (2016 or later recommended) or Google Sheets
3. **Start** on the `Data Dictionary` sheet to understand the data
4. **Explore** the `Raw Dataset` — try sorting, filtering, and scrolling
5. **Check** `Summary Statistics` to see how formulas reference the raw data
6. **Work through** the `Exercises` sheet from Beginner to Advanced

---

## 🛠️ Requirements

| Tool | Version | Notes |
|---|---|---|
| Microsoft Excel | 2016+ | Full feature support |
| Google Sheets | Any | Most features supported; slicer support limited |
| LibreOffice Calc | 7.0+ | Alternative open-source option |

> **Note:** Some advanced features (Slicers, PivotCharts) work best in Microsoft Excel.

---

## 📐 Dataset Specifications

| Property | Value |
|---|---|
| Total Rows | 100 orders |
| Total Columns | 12 |
| Date Range | January – December 2024 |
| Regions | East, West, North, South |
| Product Categories | Electronics, Clothing, Home & Living, Books, Sports |
| Unique Products | 25 |
| Unique Customers | 15 |
| Live Formulas | 214 |

---

## 📄 License

This dataset is created for **educational purposes only**. All data is synthetically generated — no real customer or transaction data is used.

---

## 🙋 Usage Suggestions

**For Instructors:**
- Use the Raw Dataset as a live demo during lectures
- Assign exercises progressively as the course advances
- Encourage students to add their own columns and charts

**For Self-Learners:**
- Complete all 15 exercises before checking against the Summary Statistics sheet
- Try recreating the Summary Statistics sheet from scratch using only the Raw Dataset
- Challenge yourself to build a one-page dashboard as a capstone project
