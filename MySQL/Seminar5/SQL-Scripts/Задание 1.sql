use edu_l5;
drop view if exists users_younger20;
create view users_younger20
as
SELECT us.firstname,us.lastname, pr.hometown,
IF (pr.gender='f', 'women','man') as 'sex' FROM profiles as pr
join users as us
on us.id=pr.user_id
where (datediff( UTC_DATE(),pr.birthday))/365.25<=20;

SELECT * FROM edu_l5.users_younger20;