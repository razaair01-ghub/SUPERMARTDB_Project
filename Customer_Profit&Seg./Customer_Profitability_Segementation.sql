
WITH Customer_Sales AS (
		SELECT c.CustomerName Customername,COUNT(s.OrderID) OrderCount,SUM(s.Sales) TotalSales,SUM(s.Profit) Profit
		FROM dbo.Sales s
		LEFT JOIN dbo.Customer c
		ON s.CustomerID=c.CustomerID
		LEFT JOIN dbo.Product_Details p
		on p.ProductID=s.ProductID
		GROUP BY c.CustomerName
		)

		SELECT RANK() OVER(ORDER BY Profit DESC) CustomerRank,Customername,OrderCount,TotalSales,Profit,
		CASE WHEN Profit >=1000 THEN 'Platinum'
			 when Profit >=500 THEn 'Gold'
			 WHEN Profit >=1 THEN 'Silver'
			 END as Customer_Profit_Tier

		FROM Customer_Sales


	