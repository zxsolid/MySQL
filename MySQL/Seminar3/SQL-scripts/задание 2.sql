#5 максимальных заработных плат
select salary
From edu_l3.staff
group by salary
order by  salary desc
limit 5;