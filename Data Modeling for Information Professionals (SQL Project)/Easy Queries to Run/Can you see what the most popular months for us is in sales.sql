Select MonthName(SaleDate) as Month, count(SaleDate) as Sales_Made_Monthly
From customersale
Group by Month(SaleDate)
Order by Sales_Made_Monthly desc