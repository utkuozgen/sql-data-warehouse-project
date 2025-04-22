/*
----------------------------------------------------------------------------
CREATE DATABASE AND SCHEMAS
----------------------------------------------------------------------------
Aim:
    Script creates a database named "datawarehouse" and sets up three schemas named "bronze", "silver", "gold".

WARNING:
    Script will drop "datawarehouse" if it already exists and all data will be deleted 
    Use caution and backup any data before running the script
*/

USE master;
GO

-- drop and recreate "datawarehouse"
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = "datawarehouse")
BEGIN
    ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE datawarehouse;
END;
GO

-- Create Database "datawarehouse"
CREATE DATABASE datawarehouse;
GO

USE datawarehouse;
GO

-- create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
