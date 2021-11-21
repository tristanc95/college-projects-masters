Select FirstName, LastName, HireDate
From employee
Where Year(HireDate) < 2011
Order by HireDate asc