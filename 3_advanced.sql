-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

-- find the pizza types who has the most revenue and group by them with category

select 
	category,
    pizza_type_id,
	revenue
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
category | pizza_type_id | revenue
Chicken	thai_ckn	43434.25
Chicken	bbq_ckn	42768
Chicken	cali_ckn	41409.5
Classic	classic_dlx	38180.5
Classic	hawaiian	32273.25
Classic	pepperoni	30161.75
Supreme	spicy_ital	34831.25
Supreme	ital_supr	33476.75
Supreme	sicilian	30940.5
Veggie	four_cheese	32265.7
Veggie	mexicana	26780.75
Veggie	five_cheese	26066.5
