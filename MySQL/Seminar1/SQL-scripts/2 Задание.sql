select m.name, p.model,price,count
from phones as p inner join manufactore as m
on p.`manufacturer-id` = m.id
where count>2;