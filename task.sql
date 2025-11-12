DROP DATABASE IF EXISTS ShopDB;

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE WareHouses (
    ID INT,
    WarehouseName VARCHAR(50),
    WarehouseAddress VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT,
    ProductName VARCHAR(50),
    WarehouseID INT,
    WarehouseAmount INT,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION,
    FOREIGN KEY (WarehouseID) REFERENCES WareHouses(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

INSERT INTO Countries (ID, Name)
	VALUES (1, 'Country1');
INSERT INTO Countries (ID, Name)
	VALUES (2, 'Country2');
    
INSERT INTO WareHouses (ID, WarehouseAmount, WarehouseName, WarehouseAddress)
VALUES (1, 100, 'Main Warehouse', 'Address 1'),
       (2, 200, 'Backup Warehouse', 'Address 2');
    
INSERT INTO ProductInventory (ID, ProductName, CountryID, WarehouseID)
	VALUES (1, 'AwersomeProduct', 1, 1);
INSERT INTO ProductInventory (ID, ProductName, CountryID, WarehouseID)
	VALUES (2, 'AwersomeProduct', 2, 2);
