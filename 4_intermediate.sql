-- Group the orders by date and calculate the average number of pizzas ordered per day.


select round(avg(no_of_pizza), 0) as avg_pizza_ordered from (
	select date_format(o.order_date, '%Y-%m-%d') as order_date, sum(od.quantity) as no_of_pizza
	from orders as o
	join order_details as od on o.order_id = od.order_id
	group by o.order_date
  ) as order_quantity;


Ans. 
avg_pizza_ordered = 138
