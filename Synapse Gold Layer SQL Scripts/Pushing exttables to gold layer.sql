CREATE DATABASE SCOPED CREDENTIAL cred_jk
WITH IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://jksawstoragedatalake.blob.core.windows.net/silver/',
    CREDENTIAL = cred_jk
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://jksawstoragedatalake.blob.core.windows.net/gold/',
    CREDENTIAL = cred_jk
)


CREATE EXTERNAL FILE FORMAT foramt_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)





CREATE EXTERNAL TABLE gold.extsales
with(
    LOCATION = 'extsales',
    data_source = source_gold,
    FILE_FORMAT = foramt_parquet
) AS 
SELECT * from gold.sales

CREATE EXTERNAL TABLE gold.extterritories
WITH(
    location = 'extterritories',
    data_source = source_gold,
    FILE_FORMAT = foramt_parquet
) AS 
SELECT * from gold.Territories

SELECT * from gold.extterritories