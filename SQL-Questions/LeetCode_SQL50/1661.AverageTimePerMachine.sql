select A1.machine_id,ROUND(AVG(A2.timestamp-A1.timestamp),3) as processing_time
from Activity A1
join Activity A2
on A1.machine_id=A2.machine_id and A1.process_id=A2.process_id
where a1.activity_type='start' and a2.activity_type='end'
group by machine_id;
