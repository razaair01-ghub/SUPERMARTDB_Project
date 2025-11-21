# 📦 Delivery Performance & Customer Experience Analysis  
### *(SQL + Power BI | Supermart Retail Database)*  

![Delivery Performance Dashboard](./Delivery_Performance_and_Customer_Experience.pbix)

---

## 📝 Project Overview  
This project analyzes **delivery performance** and its impact on **customer experience and repeat purchases** using SQL and Power BI built on the **Supermart Retail Dataset** (~50K rows).  
It measures delivery durations, evaluates shipping modes, and determines how delivery speed influences customer loyalty and satisfaction.

---

## 🎯 Business Objective  
**Primary Question:**  
*What is the average delivery time, and how does it influence customer satisfaction and repeat orders?*

This project aims to uncover:  
- Overall delivery speed performance  
- Relationship between delivery time and customer repeat behavior  
- Effectiveness of different shipping modes  
- Operational bottlenecks affecting customer experience

---

## 🗂️ Dataset Overview  
**Supermart Retail Dataset (~50,000+ rows)**  
Includes:  
- Order Data (OrderDate, ShipDate, ShipMode)  
- Customer Information  
- Product & Category Attributes  
- Sales, Quantity, Profit  
- Delivery Duration  
- Repeat Order history (if available)

---

## 🛠️ SQL Tasks Performed  

### **1️⃣ Calculate Delivery Time**
```sql
SELECT 
    OrderID,
    CustomerID,
    ShipMode,
    OrderDate,
    ShipDate,
    DATEDIFF(day, OrderDate, ShipDate) AS DeliveryTime
FROM orders;

