/*
Land Registry Case Study
This uses public data of property sales in England from the Land Registry at https://www.gov.uk/government/statistical-data-sets/price-paid-data-downloads
The data has been filtered to properties in the London SW12 postcode  
*/
 
-- How many sales?
 
/*
How many sales in each property type?
Order the rows in the result set by number of sales (highest first)
*/
select * from PricePaidSW12

SELECT
    pp.propertytype
    ,count(*) AS NumberOfSales
FROM
    PricePaidSW12 pp
GROUP BY pp.PropertyType
ORDER BY NumberOfSales DESC
/*
How many sales in each year?
Since the year of the sales is not a column in the table, calculate it with the YEAR() function
Order the rows in the result set by Year (earliest first)
*/
SELECT YEAR('2022-09-21') AS TheYear;
SELECT TOP 5 YEAR(P.TransactionDate) YearSold FROM PricePaidSW12 p;

SELECT
    YEAR(pp.TransactionDate) AS TheYear
    ,sum(pp.Price) AS AnnualSales
FROM
    PricePaidSW12 pp
GROUP BY YEAR(pp.TransactionDate)
ORDER BY TheYear ASC
 
-- What was the total market value in £ Millions of all the sales each year?
 
-- What are the earliest and latest dates of a sale?
 
-- How many different property types are there?
 
-- List all the sales in 2018 between £400,000 and £500,000 in Cambray Road (a street in SW12)
 
/*
1.  List the 25 latest sales in Ormeley Road with the following fields: TransactionDate, Price, PostCode, PAON
2. Join on PropertyTypeLookup to get the PropertyTypeName
3.  Use a CASE statement for PropertyTypeName column
*/
 