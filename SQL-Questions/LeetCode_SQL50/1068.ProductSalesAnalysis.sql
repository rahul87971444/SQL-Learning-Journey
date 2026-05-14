select product_name,year,price
from Sales e
join Product p
on e.product_id=p.product_id
