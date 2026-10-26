create database INVENTORY_MANAGEMENT_DB;
use INVENTORY_MANAGEMENT_DB;

CREATE TABLE DimFactory
(
    FactoryKey INT auto_increment PRIMARY KEY,
    FactoryCode VARCHAR(20) NOT NULL,
    FactoryName VARCHAR(150) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Region VARCHAR(100) NOT NULL,
    PlantType VARCHAR(100) NOT NULL
);

INSERT INTO DimFactory (FactoryCode, FactoryName, City, Country, Region, PlantType) 
VALUES 
    ('PLT-OSK-01', 'Osaka Assembly Plant', 'Osaka', 'Japan', 'APAC', 'Assembly'),
    ('PLT-PUN-01', 'Pune Appliances Plant', 'Pune', 'India', 'APAC', 'Assembly'),
    ('PLT-BLR-01', 'Bengaluru Electronics Plant', 'Bengaluru', 'India', 'APAC', 'Assembly'),
    ('PLT-NV-01', 'Nevada Battery Plant', 'Reno', 'USA', 'North America', 'Cell Manufacturing'),
    ('PLT-DE-01', 'Munich Industrial Devices Plant', 'Munich', 'Germany', 'Europe', 'Components'),
    ('PLT-TKY-01', 'Tokyo ProAV Plant', 'Tokyo', 'Japan', 'APAC', 'Assembly');

select * from DimFactory