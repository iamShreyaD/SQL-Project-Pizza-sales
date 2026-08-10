
-- List the top 5 most ordered pizza types along with their quantities.

select pt.name as pizza_name, sum(od.quantity) as quantity
from pizzas p
join order_details od on p.pizza_id = od.pizza_id
join pizza_types pt on p.pizza_type_id = pt.pizza_type_id
group by pt.name
order by quantity desc
limit 5;


Ans.
pizza_name                   | quantity
The Classic Deluxw Pizza     | 2453
The Barbecue Chicken Pizza   | 2432
The Hawaiian Pizza           | 2422
The Pepperoni Pizza          | 2418
The Thai Chicken Pizza       | 2371
