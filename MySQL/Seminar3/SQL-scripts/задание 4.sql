# кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно
select post as "Должности", count(post) as "Число сотрудников"
From edu_l3.staff
where age>24 and age<49
group by post
order by count(post) desc;