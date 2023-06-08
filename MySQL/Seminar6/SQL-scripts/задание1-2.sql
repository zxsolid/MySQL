use edu_l5;
DELIMITER //
USE edu_l5 //
CREATE PROCEDURE `mv_users_to_users_old`(IN user_id INTEGER)
    DETERMINISTIC
begin
	start transaction;
	insert into users_old (firstname,lastname,email)
    select firstname,lastname,email from users where users.id = user_id;
    delete from users where users.id=user_id;
    commit;
end //

DELIMITER ;