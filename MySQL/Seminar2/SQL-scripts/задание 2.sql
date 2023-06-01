use edu_l2;
alter table sales add column order_type varchar(50);

update sales set order_type = case
	when count_product<100 then 'Мелкий заказ'
	when count_product>=100 and count_product<=300 then 'Средний заказ'
	when count_product>300 then 'Крупный заказ'
	else '---'
end;

select * from sales;