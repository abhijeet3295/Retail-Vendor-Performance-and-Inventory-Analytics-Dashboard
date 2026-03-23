---  CREATING DWH DATABASE

CREATE DATABASE Vendor_DWH
go

USE Vendor_DWH

-- CREATING DIMENSION TABLES 

CREATE TABLE Dim_Product(
ProductKey			 INT			  PRIMARY KEY  IDENTITY(1,1),
Brand				 INT              NOT NULL,
Description			 VARCHAR(100)	  NOT NULL,
Size				 VARCHAR(20)	  NOT NULL,
VOLUME				 INT              NOT NULL,
Classification		 TINYINT		  NOT NULL
)

DROP TABLE [dbo].[Dim_Product]

CREATE TABLE Dim_Store(
StoreKey             INT			  PRIMARY KEY    IDENTITY(1,1),
Brand				 INT              NOT NULL,
City                 VARCHAR(50)      NOT NULL
)

DROP TABLE [dbo].[Dim_Store]


CREATE TABLE   Dim_Vendor(
VendorKey           INT              PRIMARY KEY IDENTITY(1,1),
VendorNumber        INT              NOT NULL,
VendorName          VARCHAR(100)     NOT NULL
)

DROP TABLE [dbo].[Dim_Vendor]

CREATE TABLE Dim_Date(
DateKey            INT              PRIMARY KEY  IDENTITY(1,1),
FullDate           DATE             NOT NULL,
Year               SMALLINT         NOT NULL,
Month              VARCHAR(20)      NOT NULL,
Quarter            VARCHAR(10)      NOT NULL,
DayOfWeek          VARCHAR(10)      NOT NULL
)


DROP TABLE [dbo].[Dim_Date]


-- CREATING FACT TABLE 
CREATE TABLE Fact_Sales(
ProductKey     INT       REFERENCES Dim_Product(ProductKey),       
StoreKey       INT       REFERENCES Dim_Store(StoreKey),
DateKey        INT       REFERENCES Dim_Date(DateKey),
VendorKey      INT       REFERENCES Dim_Vendor(VendorKey),
SalesQuantity  INT       NOT NULL,
SalesDollars   MONEY     NOT NULL,
SalesPrice     MONEY     NOT NULL,
ExciseTax      MONEY     NOT NULL
)


CREATE TABLE  Fact_Purchases(
ProductKey           INT       REFERENCES Dim_Product(ProductKey),       
StoreKey             INT       REFERENCES Dim_Store(StoreKey),
DateKey              INT       REFERENCES Dim_Date(DateKey),
VendorKey            INT       REFERENCES Dim_Vendor(VendorKey),
PurchaseQuantity     INT       NOT NULL,
PurchasePrice        MONEY     NOT NULL,
PurchaseDollars      MONEY     NOT NULL
)


CREATE TABLE Fact_Inventory_Snapshot(
ProductKey           INT       REFERENCES Dim_Product(ProductKey),      
StoreKey             INT       REFERENCES Dim_Store(StoreKey),
DateKey              INT       REFERENCES Dim_Date(DateKey),
OnHandQuantity       INT       NOT NULL
)

