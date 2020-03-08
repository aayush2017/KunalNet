CREATE DEFINER = CURRENT_USER TRIGGER `yourdb`.`book_detail_BEFORE_UPDATE` 
BEFORE UPDATE ON `book_detail` FOR EACH ROW
BEGIN

END

CREATE DEFINER = CURRENT_USER TRIGGER `yourdb`.`customer_BEFORE_UPDATE` BEFORE UPDATE ON `customer` FOR EACH ROW
BEGIN
INSERT INTO `yourdb`.`mini_statement` VALUES(old.acc_no, old.avail_balance);
END

