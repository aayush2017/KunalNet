DELIMITER $$
CREATE PROCEDURE `demoNew`()
BEGIN
SELECT * FROM customers;
SELECT * FROM orders;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `searchCountry`(cntName varchar(255))
BEGIN
SELECT * FROM customers WHERE `country`= cntName;
END$$
DELIMITER ;

CALL `mydb`.`demoNew`();


USE `mydb`;
DROP procedure IF EXISTS `new_procedure`;

DELIMITER $$
USE `mydb`$$
CREATE PROCEDURE `new_procedure` ()
BEGIN
SELECT * FROM customers;
END$$

DELIMITER ;

