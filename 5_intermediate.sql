-- Determine the top 3 most ordered pizza types based on revenue.


select pt.name, sum(p.price * od.quantity) as revenue
from pizza_types as pt
join pizzas as p on pt.pizza_type_id = p.pizza_type_id
join order_details as od on p.pizza_id = od.pizza_id
group by pt.name
order by sum(p.price * od.quantity) desc
limit 3;


Ans.
name                         | revenue
The Thai Chicken Pizza       | 43434.25
The Barbecue Chicken Pizza   | 42768
The California Chicken Pizza | 41409.5
