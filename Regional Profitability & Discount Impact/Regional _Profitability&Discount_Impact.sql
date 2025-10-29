WITH Profit_discount AS (SELECT c.Region Region,p.Category,SUM(s.Sales) Total_Sales,
ROUND(SUM(s.Profit),2) Total_Profit,ROUND(SUM(s.Discount),2) Total_Discount,ROUND(AVG(s.Discount),3) Avg_Discount,
ROUND(AVG(s.Profit),3) Avg_Profit
FROM dbo.Sales s
JOIN dbo.Customer c
ON c.CustomerID=s.CustomerID
JOIN dbo.Product p
ON p.Product_ID=s.ProductID
Group by c.Region,p.Category)
-- Profit MArgin=Profit/Sales*100

--Flag Logic ------ If avg_discount > 0.2(20%) And Profit mArgin < 0.1(10%) -Negative Impact
SELECT Region,Category,Avg_Discount,ROUND(Total_Profit/Total_Sales*100,2) Profit_Margin,
		CASE WHEN 
		Avg_Discount> 0.20 AND	  ROUND(Total_Profit/Total_Sales*100,2) < 0.10 THEN 'Negative Impact'
		ELSE 'Neutral'
		END as Discount_Impact_flag

FROM Profit_discount




