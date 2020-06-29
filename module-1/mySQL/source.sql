# CHALLENGE 2

USE lab_mysql;

CREATE TABLE `lab_mysql`.`salespeople` (
  `salesperson_ID` VARCHAR(45) NOT NULL,
  `salesperson_name` VARCHAR(45) NOT NULL,
  `salesperson_store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`salesperson_ID`));
  
CREATE TABLE `lab_mysql`.`invoices` (
  `invoice_ID` VARCHAR(45) NOT NULL,
  `invoice_date` DATE NOT NULL,
  `salesperson_ID` VARCHAR(45) NOT NULL,
  `car_ID` VARCHAR(45) NOT NULL,
  `customer_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`invoice_ID`));
  
  CREATE TABLE `lab_mysql`.`cars` (
  `car_ID` VARCHAR(45) NOT NULL,
  `car_manufacturer` VARCHAR(45) NOT NULL,
  `car_model` VARCHAR(45) NOT NULL,
  `car_year` INT NOT NULL,
  `car_color` VARCHAR(45) NULL,
  PRIMARY KEY (`car_ID`));
  
CREATE TABLE `lab_mysql`.`customers` (
  `customer_ID` VARCHAR(45) NOT NULL,
  `customer_name` VARCHAR(45) NOT NULL,
  `customer_phonenumber` VARCHAR(45) NOT NULL,
  `customer_email` VARCHAR(45) NOT NULL,
  `customer_address` VARCHAR(45) NOT NULL,
  `customer_city` VARCHAR(45) NOT NULL,
  `customer_stateprovince` VARCHAR(45) NOT NULL,
  `customer_country` VARCHAR(45) NOT NULL,
  `customer_zip` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_ID`));  


# CHALLENGE 3