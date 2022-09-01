https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_case

SELECT CategoryID, Price, SupplierID,
CASE 
WHEN Price < 30 THEN '저렴'
WHEN Price > 60 THEN '비쌈'
ELSE '적당'
END AS '가격'
FROM Products
WHERE CategoryID in (3,6)
order by SupplierID DESC;