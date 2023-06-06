use edu_l5;
select u.firstname as 'Имя',
	u.lastname as 'Фамилия',
	count(m.id) as count_sms,
	(dense_rank() over(order by count(m.id) desc )) as 'rank'
from users as u
join messages as m
on u.id=m.from_user_id
group by u.id;