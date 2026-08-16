-- Join the necessary tables to find the total quantity of each pizza category ordered.

select pt.category as category, sum(od.quantity) as total_quantity
from pizza_types as pt
join pizzas as p on pt.pizza_type_id = p.pizza_type_id
join order_details as od on p.pizza_id = od.pizza_id
group by pt.category;


Ans.
category | total_quantity
Classic  | 14888
Veggie   | 11649
Supreme  | 11987
Chicken  | 11050
