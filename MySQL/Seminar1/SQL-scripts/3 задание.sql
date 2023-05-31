select p.model,specifications,`year-manufacture`,count,price
from phones as p inner join manufactore as m
on p.`manufacturer-id` = m.id
where name='Samsung';