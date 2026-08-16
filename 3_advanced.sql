-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

-- find the pizza types who has the most revenue and group by them with category

select 
	category,
    pizza_type_id
from (
select 
	category,
    pizza_type_id,
    revenue,
    dense_rank() over (partition by category order by revenue desc) as rev
from (
	select pt.category, pt.pizza_type_id, round(sum(od.quantity * p.price), 2) as revenue
	from pizza_types as pt
	join pizzas as p on pt.pizza_type_id = p.pizza_type_id
	join order_details as od on p.pizza_id = od.pizza_id
	group by pt.category, pt.pizza_type_id
	order by revenue desc 
) as revenue_by_type
) as revenue_by_rank
where rev <= 3
;


Ans.
category | pizza_type_id
Chicken	thai_ckn
Chicken	bbq_ckn
Chicken	cali_ckn
Classic	classic_dlx
Classic	hawaiian
Classic	pepperoni
Supreme	spicy_ital
Supreme	ital_supr
Supreme	sicilian
Veggie	four_cheese
Veggie	mexicana
Veggie	five_cheese
