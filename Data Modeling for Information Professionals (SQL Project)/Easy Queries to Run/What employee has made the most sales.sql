Select E.FirstName, E.LastName, count(C.Employee_ID) as Employee_Sold_Total
From Employee E
Join customersale C on C.Employee_ID = E.EmployeeID
Group by C.Employee_ID
Order by Employee_Sold_Total desc