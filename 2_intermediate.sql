-- Determine the distribution of orders by hour of the day.

select hour(order_time) as hour, count(order_id) as total_orders
from orders 
group by hour(order_time);


Ans.
hour | total_orders
11   | 1231
12   | 2520
13   | 2455
14   | 1472
15   | 1468
16   | 1920
17   | 2336
18   | 2399
19   | 2009
20   | 1642
21   | 1198
22   | 663
23   | 28
10   | 8
9    | 1
