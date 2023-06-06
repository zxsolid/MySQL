use edu_l4;

# здесь почти аналогично второй задачи
select distinct * from shops
where shops.id not in (select cats.shops_id from cats
						where cats.name='Murzik' or cats.name='Zuza');