use edu_l4;
# для контроля добавил еще одного Murzika в магазин МурзиЛЛа

# первый способ черех JOIN
select DISTINCT s.shopname as 'Магазин'  from cats as c
join shops as s
on c.shops_id=s.id
where c.name='Murzik';

# второй способ через вложенный запрос
select distinct * from shops
where shops.id 	in (select cats.shops_id
					from cats
					where cats.name='Murzik');