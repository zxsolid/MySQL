# суммарная зарплата по каждой специальности - фонд заработной платы (salaryFund)
select post, sum(salary) as salaryFund
From edu_l3.staff
group by post
order by  salaryFund desc;