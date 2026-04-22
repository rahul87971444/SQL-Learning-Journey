select e.name as employee,m.name as manager
from employee e
left join employee m
on e.managerId=m.Id;
