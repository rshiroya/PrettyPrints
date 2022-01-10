SELECT customer_name, customer_add, customer_city, customer_state, customer_zip FROM customers;
SELECT customer_name, customer_phone FROM customers WHERE customer_state = 'GA';
SELECT customer_name, customer_zip FROM customers WHERE customer_state = 'NC' OR customer_state = 'SC';
SELECT title, artist, order_date, ship_date FROM items,orders,orderline WHERE orders.order_id = orderline.order_id AND items.item_id = orderline.item_id;
SELECT * FROM items ORDER BY unit_price asc;
SELECT * FROM items WHERE unit_price > 100.00;
SELECT * FROM items WHERE on_hand > 300;
SELECT title, unit_price, unit_price * 2 AS retail_price FROM items;
SELECT customer_name, customer_phone FROM customers, orders WHERE customers.customer_id = orders.customer_id and orders.order_date > "2014-01-01";
SELECT title, order_qty FROM items,orderline WHERE items.item_id = orderline.item_id;
SELECT title FROM items WHERE unit_price BETWEEN 40 AND 100;
Select customer_name, title, artist, order_qty from customers left outer join orders on customers.customer_id = orders.customer_id join orderline on orders.order_id = orderline.order_id join items on orderline.item_id = items.item_id group by items.artist order by items.artist;
SELECT customer_name, unit_price * 2 AS total_revenue FROM customers join orders on customers.customer_id = orders.customer_id join orderline on orders.order_id = orderline.order_id join items on orderline.item_id = items.item_id group by customer_name;
SELECT customer_state,count(customer_id) FROM `customers` group by customer_state  