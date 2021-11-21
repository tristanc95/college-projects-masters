Select Distinct FM.ManufacturerName
From filmmanufacturer FM
Join film F on F.ManufacturerID = FM.ManufacturerID
Join itemsale I on I.FilmID = F.FilmID
Join customersale c on c.SaleID = I.SaleID
Where Year(c.SaleDate) = 2020 AND Month(c.SaleDate) between 3 AND 8
