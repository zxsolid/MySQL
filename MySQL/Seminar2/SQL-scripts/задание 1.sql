create database edu_l2;
use edu_l2;

create table sales (
 id int primary key auto_increment not null,
 	order_date date,
 	count_product int unsigned
);

insert into sales (order_date, count_product) values ('2022-01-01',156),
('2022-01-02',180),
('2022-01-03',21),
('2022-01-04',124),
('2022-01-05',341);

select * from sales;