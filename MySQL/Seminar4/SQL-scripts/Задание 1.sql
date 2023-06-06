use edu_l4;
select c.id as '№', c.name as 'Кличка' , s.shopname as 'Магазин' from cats as c
join shops as s
on s.id=c.shops_id;