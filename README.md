# Retail Vendor Performance & Inventory Analytics Dashboard

## 📌 Overview

This project focuses on building an end-to-end Business Intelligence solution to analyze retail operations, including **sales, purchases, vendor performance, and inventory management**.

A **Star Schema data model** was designed using SQL Server, and interactive dashboards were developed in Power BI to generate actionable insights for decision-making.

---

## 🎯 Objectives

* Analyze **sales vs purchase trends**
* Evaluate **vendor performance and profitability**
* Monitor **inventory levels and stock movement**
* Identify **low-performing vendors and products**
* Enable **data-driven business decisions**

---

## 🏗️ Data Modeling

Designed a **Star Schema** with:

### Fact Tables

* Fact_Sales → Sales transactions
* Fact_Purchases → Purchase transactions
* Fact_Inventory_Snapshot → Inventory levels over time
* Fact_VendorInvoice → Freight and invoice-level data

### Dimension Tables

* Dim_Product → Product details (Brand, Size, Classification)
* Dim_Vendor → Vendor information
* Dim_Store → Store and location
* Dim_Date → Time intelligence

---

## ⚙️ ETL Process

* Extracted raw data from multiple sources
* Transformed and cleaned data using SQL Server
* Created surrogate keys and relationships
* Loaded data into structured fact and dimension tables

---

## 📊 Key Metrics (DAX Measures)

* Total Sales & Purchase
* Gross Profit
* Profit Margin %
* Sales YTD / MTD
* Year-over-Year Growth
* Vendor Ranking
* Stock Turnover

---

## 📈 Dashboard Features

* KPI cards for Revenue, Profit, and Efficiency
* Monthly trend analysis (Sales vs Purchases)
* Vendor contribution and ranking
* Top & bottom performing vendors
* Drill-through analysis for detailed insights

---

## 🔍 Insights Generated

* Identified top revenue-generating vendors
* Detected low-margin and underperforming vendors
* Analyzed seasonal sales trends
* Evaluated inventory efficiency using turnover ratios

---

## 🛠️ Tools & Technologies

* SQL Server (Data Modeling & ETL)
* Power BI (Visualization & DAX)
* SSMS (Querying & Data Preparation)

---

## 🚀 Business Impact

* Improved visibility into vendor performance
* Enabled profit-driven decision making
* Helped optimize purchasing and inventory strategies
* Reduced reliance on manual reporting

---

## 📌 Future Enhancements

* Forecasting sales using time series models
* Automated data pipelines
* Integration with real-time data sources

---
