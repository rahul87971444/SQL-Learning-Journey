select customer_id,COUNT(v.visit_id) as count_no_trans
from Visits v
left join Transactions j
on v.visit_id=j.visit_id
WHERE v.visit_id NOT IN (
    SELECT j.visit_id
    FROM Transactions j
)
group by customer_id;
