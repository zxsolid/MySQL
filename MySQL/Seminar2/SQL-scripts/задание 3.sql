use edu_l2;

create table orders (
	id int primary key not null auto_increment,
	employee_id varchar(3),
	amount real,
	order_status varchar(9)
);

insert into orders (employee_id,amount,order_status)values
('e03',15.00,'OPEN'),
('e01',25.50,'OPEN'),
('e05',100.70,'CLOSED'),
('e02',22.18,'OPEN'),
('e04',9.50,'CANCELLED');

select *,
case
	when order_status = 'OPEN' then 'Order is in open state'
	when order_status = 'CLOSED' then 'Order is closed'
	when order_status = 'CANCELLED' then 'Order is canCelled'
	else '---'
end as full_order_status
from orders;