
-- Identify the highest-priced pizza.

select pt.name as pizza, p.price as highest_price
from pizza_types pt
join pizzas p on pt.pizza_type_id = p.pizza_type_id
order by p.price desc
limit 1;


Ans. pizza: The Greek Pizza
     highest_price : 35.95
