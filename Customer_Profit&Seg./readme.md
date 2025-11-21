# 🧮 Customer Profitability & Segmentation Analysis  
### *SQL + Power BI | Supermart Retail Dataset*

![SQL](https://img.shields.io/badge/SQL-336791?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=powerbi&logoColor=black)

---

## 🎯 Business Question  
**Which customer segments contribute the most to overall profit, and how do their buying behaviors vary across regions and product categories?**

This analysis identifies **high-value customers**, **low-value customers**, and **regional profitability patterns** for smarter marketing and retention strategies.

---

## 🛠️ SQL Approach (Conceptual – No full queries)  
Used advanced SQL logic to compute customer-level profitability and segmentation.

### **Key SQL Concepts Used**
- **Joins:** Orders × Customers × Products  
- **Aggregations:** `SUM(Sales)`, `SUM(Profit)`, `COUNT(OrderID)`  
- **Window Functions:**  
  - `RANK()` → Rank customers by profitability  
  - `NTILE()` or `CASE WHEN` → Create customer tiers  
- **Grouping:** Customer-level, Region-level, Segment-level KPIs  
- **Filtering:** Region-wise and category-wise profitability  

These operations enabled a full 360° view of customer value.

---

## 📊 Power BI Visualizations  

### ✔ **Customer Profitability Dashboard**  
Interactive overview of customer contribution and ranking.

### ✔ **KPI Cards**  
- Total Profit  
- Avg Profit per Customer  
- Total Orders  

### ✔ **TreeMap — Customer Segment & Region**  
Shows which customer groups drive the highest profit.

### ✔ **Top 10 Customers (Clustered Bar Chart)**  
Ranks customers by revenue & profit contribution.

### ✔ **Dynamic Slicers**  
- Region  
- Category  
- Time Range  

---

## 🚀 Key Insights  
- Identified **Platinum customers** who produce the highest revenue and profit.  
- Found regions with consistently strong customer profitability.  
- Segmentation (Platinum / Gold / Silver) helped reveal customer distribution.  
- Highlighted customer groups needing targeted engagement to increase LTV.  

---

## 🏢 How This Helps the Organization  

### ⭐ 1. Target High-Value Customers  
Focus promotions, loyalty programs, and personalized offers on **top-tier customers**.

### ⭐ 2. Improve Customer Retention  
Understanding buying trends → better recommendations → reduced churn.

### ⭐ 3. Optimize Marketing Spend  
Company can avoid wasting budget on low-value or poorly performing segments.

### ⭐ 4. Strengthen Regional Strategy  
Regions with weak profitability can be addressed with targeted campaigns.

### ⭐ 5. Increase Overall Profit  
By focusing on high-value behavior patterns and profitable segments.

---

## 🧠 Skills & Tools Demonstrated  
- **SQL:** Joins, Aggregations, Window Functions, Ranking, Segmentation  
- **Power BI:** KPIs, TreeMaps, Bar Charts, Slicers, Interactive Dashboards  
- **Customer Lifetime Value Analysis (LTV)**  
- **Profitability Modeling**  
- **Retail Customer Analytics**  
- **Data Storytelling & BI Reporting**

---

## 📁 Project Files  
| File | Description |
|------|-------------|
| `Customer_Profitability_Segementation.sql` | SQL logic for customer profitability & segmentation |
| `Customer_profit&Segementatio_dashboard.pbix` | Power BI dashboard |
| `README.md` | Project documentation |

---

