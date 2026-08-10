-- Identify the most common pizza size ordered.

select p.size as pizza_size, count(od.order_details_id) as no_of_pizza
from order_details as od
join pizzas as p on od.pizza_id = p.pizza_id
group by p.size
order by no_of_pizza desc;


Ans.
pizza_size | no_of_pizza
L          | 18526
M          | 15385
S          | 14137
XL         | 544
XXL        | 28
