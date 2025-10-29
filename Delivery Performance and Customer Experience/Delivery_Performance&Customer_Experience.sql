--Delivery Performance and Customer Experience



WITH Date_Table AS(

SELECT  CustomerID,OrderID,OrderDate,ShipDate,DATEDIFF(day,OrderDate,ShipDate) Delivery_days
			
		
From Sales 

) --
SELECT CustomerID,COUNT(*) TotalOrders,AVG(DATEDIFF(day,OrderDate,ShipDate)) Avg_Delivery_days,
				CASE WHEN AVG(DATEDIFF(day,OrderDate,ShipDate)) <=2 THEN 'Fast Delivery'
					 WHEN AVG(DATEDIFF(day,OrderDate,ShipDate)) BETWEEN 2 and 4 THEN 'Moderate Delivery'
					 WHEN AVG(DATEDIFF(day,OrderDate,ShipDate)) >4 THEN 'Late Delivery'
				END As Delivery_Status
				,CASE WHEN COUNT(*) > 1 THEN 'Repreated Order'
					ELSE 'Single order' END AS Customer_Repeat_Order
FROM Date_Table
GROUP BY CustomerID
ORDER BY Avg_Delivery_days DESC
