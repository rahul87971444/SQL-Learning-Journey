select  class
from Courses
group by class
having count(student)and count(class)>=5 
