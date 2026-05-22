select e.name
from Employee e
inner join Employee m
on e.id=m.managerId
group by m.managerId
HAVING COUNT(m.managerId) >= 5;
