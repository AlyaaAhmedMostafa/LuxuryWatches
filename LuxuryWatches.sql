Select *
From [dbo].[Watches] AS Watches

SELECT
 CONCAT(cond, ' ',condition) AS Conditionupdated
FROM Watches

Update Watches
SET Condition  = concat (cond,' ',condition)

ALTER TABLE Watches
DROP COLUMN ref,cond

Select Top 10 model, 
Count( model) As modelCount
From  Watches
Group by model
Order By modelCount Desc

Select Top 10 brand, 
Count( Brand) As BrandCount,
Count(*)*100/Sum (count(*))Over() As BrandPercent
From  Watches
where Brand is not null
Group by Brand
Order By BrandCount Desc

Select Top 10 brand,Max(Price)As MaxPrice,
Count( Brand) As BrandCount
From  Watches
where Brand is not null
Group by Brand
Order By MaxPrice Desc

Select Top 10 name,Max(Price)As MaxPrice
From  Watches
where name is not null
Group by name
Order By MaxPrice Desc

Select Top 10 brand,Min(Price)As MinPrice
From  Watches
where Brand is not null
Group by Brand
Order By MinPrice ASC

Select Top 10 Brand,condition,Max(Price) As MaxPrice
From  Watches
where Brand is not null
Group by Brand,condition
Order By MaxPrice Desc


Select mvmt, 
Count( mvmt) As mvmtCount,
Count(*)*100/Sum (count(*))Over() As mvmtPercent
From  Watches
where mvmt is not null
Group by mvmt
Order By mvmtCount Desc

Select casem, 
Count( casem) As casemCount,
Count(*)*100/Sum (count(*))Over() As casemPercent
From  Watches
where casem is not null
Group by casem
Order By casemCount Desc

Select bracem, 
Count( bracem) As bracemCount,
Count(*)*100/Sum (count(*))Over() As bracemPercent
From  Watches
where bracem is not null
Group by bracem
Order By bracemCount Desc

Select sex, 
Count( sex) As SexCount,
Count(*)*100/Sum (count(*))Over() As SexPercent
From  Watches
where sex is not null
Group by Sex
Order By SexCount Desc

Select Brand, condition,
Count (Brand) As BrandCount
From  Watches
Group by Brand,condition
Order By BrandCount Desc

