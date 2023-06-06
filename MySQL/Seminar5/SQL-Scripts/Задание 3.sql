use edu_l5;
select id,body,created_at,
TIMESTAMPDIFF(SECOND,LAG (created_at) OVER (order by created_at),created_at) delta
from messages
order by created_at;