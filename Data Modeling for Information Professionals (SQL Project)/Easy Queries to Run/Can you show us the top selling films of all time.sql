Select F.FilmName, count(I.FilmID) * I.Quantity as Times_Been_Purchased
From Film F
Join itemsale I on I.FilmID = F.FilmID
Group by I.FilmID
Order by Times_Been_Purchased desc