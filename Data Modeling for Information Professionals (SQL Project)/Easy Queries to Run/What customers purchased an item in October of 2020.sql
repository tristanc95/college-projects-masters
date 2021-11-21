Select Cu.FirstName, Cu.LastName
From Customer Cu
Join customersale c on c.customer_id = cu.customer_id
Where Year(c.SaleDate) = 2020 AND Month(c.SaleDate) = 10