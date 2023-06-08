USE `edu_l5`;
DROP function IF EXISTS `hello`;

DELIMITER //
USE `edu_l5` //
CREATE FUNCTION hello()
RETURNS varchar(13)
DETERMINISTIC
BEGIN
DECLARE result VARCHAR(13);
DECLARE ctime TIME DEFAULT curtime();
SELECT CASE
	WHEN ctime >= '00:00:00' AND  CURRENT_TIME < '06:00:00'
		THEN 'Доброй ночи'
	WHEN ctime >= '06:00:00' AND  CURRENT_TIME < '12:00:00'
		THEN 'Доброе утро'
	WHEN ctime >= '12:00:00' AND  CURRENT_TIME < '18:00:00'
		THEN 'Добрый день'
	ELSE 'Добрый вечер'
END into result;
RETURN result;
END //
DELIMITER ;