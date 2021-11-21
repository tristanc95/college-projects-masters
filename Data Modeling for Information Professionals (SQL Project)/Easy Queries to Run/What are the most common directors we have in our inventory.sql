Select Distinct DirectorFName, DirectorLName, count(DirectorLName) as Director_Count
From Film
Group by DirectorLName
Order by Director_Count desc