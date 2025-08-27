--CREATE VIEW CALENDAR
-------------------------
CREATE VIEW gold.calendar
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    )AS query1

--CREATE VIEW CUSTOMERS
-------------------------
CREATE VIEW gold.customers
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    )AS query1

--CREATE VIEW Product_Categories
-------------------------
CREATE VIEW gold.Product_Categories
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT = 'PARQUET'
    )AS query1


--CREATE VIEW Product_Product_SubCategories
-------------------------
CREATE VIEW gold.Product_SubCategories
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Product_SubCategories/',
        FORMAT = 'PARQUET'
    )AS query1
--CREATE VIEW Products
-------------------------
CREATE VIEW gold.Products
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    )AS query1

--CREATE VIEW Returns
-------------------------
CREATE VIEW gold.Returns
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    )AS query1

--CREATE VIEW Sales
-------------------------
CREATE VIEW gold.Sales
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    )AS query1


--CREATE VIEW Territories
-------------------------
CREATE VIEW gold.Territories
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://jksawstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    )AS query1

    
