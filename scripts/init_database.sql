/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'SQL_DW_1' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'SQL_DW_1' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'SQL_DW_1' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SQL_DW_1')
BEGIN
    ALTER DATABASE SQL_DW_1 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE SQL_DW_1;
END;
GO

-- Create the 'SQL_DW_1' database
CREATE DATABASE SQL_DW_1;
GO

USE SQL_DW_1;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
