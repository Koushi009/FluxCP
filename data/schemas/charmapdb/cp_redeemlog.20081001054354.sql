DROP PROCEDURE IF EXISTS cp_redeemlog_20081001054354;
CREATE PROCEDURE cp_redeemlog_20081001054354() BEGIN
    DECLARE CONTINUE HANDLER FOR 1060 BEGIN END;
ALTER TABLE `cp_redeemlog`
	ADD `credits_before` INT( 10 ) NOT NULL ,
	ADD `credits_after` INT( 10 ) NOT NULL;END;
CALL cp_redeemlog_20081001054354();
DROP PROCEDURE cp_redeemlog_20081001054354;
