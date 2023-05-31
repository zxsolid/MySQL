select m.name, p.model,price,count
from phones as p inner join manufactore as m
on p.`manufacturer-id` = m.id
where p.price*p.count>100000 and p.price*p.count<145000;