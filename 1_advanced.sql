-- Calculate the percentage contribution of each pizza type to total revenue.

select 
	pt.name, 
	round((sum(od.quantity * p.price)/sum(sum(od.quantity * p.price)) over()) * 100, 2) as percentage
from pizza_types as pt
join pizzas as p on pt.pizza_type_id = p.pizza_type_id
join order_details as od on p.pizza_id = od.pizza_id
group by pt.name
order by percentage desc;


Ans.
name percentage
The Barbecue Chicken Pizza	5.23
The Big Meat Pizza	2.81
The Brie Carre Pizza	1.42
The Calabrese Pizza	1.95
The California Chicken Pizza	5.06
The Chicken Alfredo Pizza	2.07
The Chicken Pesto Pizza	2.04
The Classic Deluxe Pizza	4.67
The Five Cheese Pizza	3.19
The Four Cheese Pizza	3.95
The Greek Pizza	3.48
The Green Garden Pizza	1.71
The Hawaiian Pizza	3.95
The Italian Capocollo Pizza	3.07
The Italian Supreme Pizza	4.09
The Italian Vegetables Pizza	1.96
The Mediterranean Pizza	1.88
The Mexicana Pizza	3.27
The Napolitana Pizza	2.95
The Pepper Salami Pizza	3.12
The Pepperoni Pizza	3.69
The Pepperoni, Mushroom, and Peppers Pizza	2.3
The Prosciutto and Arugula Pizza	2.96
The Sicilian Pizza	3.78
The Soppressata Pizza	2.01
The Southwest Chicken Pizza	4.24
The Spicy Italian Pizza	4.26
The Spinach and Feta Pizza	2.85
The Spinach Pesto Pizza	1.91
The Spinach Supreme Pizza	1.87
The Thai Chicken Pizza	5.31
The Vegetables + Vegetables Pizza	2.98
