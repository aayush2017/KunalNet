DROP TRIGGER IF EXISTS `ravidb`.`bookdetail_BEFORE_DELETE`;

DELIMITER $$
USE `ravidb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `ravidb`.`bookdetail_BEFORE_DELETE` 
BEFORE DELETE ON `bookdetail` FOR EACH ROW
BEGIN
INSERT INTO bookDetailCopy VALUES(old.id, old.bookName, old.bookprice);
END$$
DELIMITER ;
