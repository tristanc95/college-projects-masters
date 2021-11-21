Select Cu.Customer_ID, Cu.FirstName, Cu.LastName, count(c.Customer_ID) as Purchases_Made
From Customer Cu
Join customersale c on c.customer_id = Cu.Customer_ID
Where Year(c.SaleDate) BETWEEN 2015 and 2021
Group by c.customer_id
Order by Purchases_Made desc