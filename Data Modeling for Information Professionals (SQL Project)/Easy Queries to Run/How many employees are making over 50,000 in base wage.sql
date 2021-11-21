Select E.EmployeeID, E.FirstName, E.LastName, s.salary
From Employee E
Join Salary s on s.EmployeeID = E.EmployeeID
Where Salary >= 50000
Order by s.salary