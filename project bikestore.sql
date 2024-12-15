

-- average discount per order
select avg(discount) from sales.order_items

-- total sales
select sum( list_price * quantity * (1- discount)) from sales.order_items
-- total number of orders
select count(order_id) from sales.orders

-- total quantity sold
select sum(quantity) from sales.order_items

-- average sales per order
SELECT 
    AVG(order_total) AS avg_sales_per_order
FROM (
    SELECT 
        oi.order_id, 
        SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS order_total
    FROM 
        sales.order_items AS oi
    GROUP BY 
        oi.order_id
) AS order_sales;


-- total number of products
select count( product_id) from production.products

-- total number of orders rejected
select count( order_id) from sales.orders
where order_status = 3
--45

-- sales by brand
select brand_name, sum( oi.list_price * quantity * (1-discount))
from sales.order_items oi inner join production.products p
on oi.item_id = p.product_id
inner join production.brands b
on p.brand_id = b.brand_id
group by brand_name
order by 2 desc

-- most expensive bike
select top 1 product_name, list_price, model_year, brand_name from production.products p inner join production.brands b
on p.brand_id  = b.brand_id
order by 2 desc

-- # of customers
select count(distinct customer_id) '#customers' from sales.customers


-- # of stores
select count(store_id) '#stores' from sales.stores

-- total amount spent by order
select order_id, sum( list_price * quantity * ( 1 - discount)) from sales.order_items
group by order_id

-- sales by store
select store_name , sum( list_price * quantity * ( 1 - discount)) sales from sales.stores s inner join sales.orders o
on s.store_id = o.store_id
inner join sales.order_items oi
on o.order_id = oi.order_id
group by rollup(store_name)

-- most sold category
select top 1 category_name , sum(quantity) 'quantity sold' from production.categories c inner join production.products p 
on c.category_id = p.category_id
inner join sales.order_items o
on p.product_id = o.item_id
group by rollup(category_name)


--7 category with most rejected orders
select  top 1 category_name , sum(distinct os.order_id) 'orders rejected' from production.categories c inner join production.products p 
on c.category_id = p.category_id
inner join sales.order_items o
on p.product_id = o.item_id
inner join sales.orders os
on o.order_id = os.order_id
where os.order_status = 3
group by category_name
order by 2 desc

-- Which bike is the least sold?

select top 1 product_name, sum(quantity) from production.products p inner join sales.order_items oi
on p.product_id = oi.item_id
group by product_name
order by 2




--  total number of staff
select count(distinct staff_id) '#staff' from sales.staffs

select * from sales.staffs 
where manager_id is null

--  Which brand is the most liked?
select top 3 brand_name , sum(quantity) 'quantity sold' from production.brands b inner join production.products p 
on b.brand_id = p.brand_id
inner join sales.order_items o
on p.product_id = o.item_id
group by brand_name
order by 2 desc


-- least liked category
select top 1 category_name , sum(quantity) 'quantity sold' from production.categories c inner join production.products p 
on c.category_id = p.category_id
inner join sales.order_items o
on p.product_id = o.item_id
group by category_name
order by 2

select count(category_id) '#categories' from production.categories


-- Which store still have more products of the most liked brand?
select  store_name, brand_name , sum(s.quantity) 'quantity left' from production.brands b inner join production.products p 
on b.brand_id = p.brand_id
inner join production.stocks s
on p.product_id = s.product_id
inner join sales.stores st
on st.store_id = s.store_id
where brand_name = 'trek'
group by store_name, brand_name
order by 3 desc


-- Which state is doing better in terms of sales?
select s.state , sum( list_price * quantity * ( 1 - discount)) 'sales' from sales.stores s inner join sales.orders o
on s.store_id = o.store_id
inner join sales.order_items oi
on oi.order_id = o.order_id
group by rollup(s.state)
order by 2 desc





-- How many states does BikeStore operate in?
select count(state) '#stores' from sales.stores

-- How many bikes under the children category were sold in the last 8
-- months?

select c.category_name, count(quantity) from production.categories c inner join production.products p
on c.category_id = p.category_id
inner join sales.order_items oi
on oi.item_id = p.product_id
inner join sales.orders o
on o.order_id = oi.order_id
where c.category_name = 'Children Bicycles'
group by c.category_name


- How many orders are still pending?
select count(order_id) 'orders rejected' from sales.orders
where order_status = 2

--  What’s the names of category and brand does "Electra white water 3i -
-- 2018" fall under?
select c.category_name, b.brand_name from production.categories c inner join production.products p
on c.category_id = p.category_id
inner join production.brands b
on b.brand_id = p.brand_id
where p.product_name = 'Electra White Water 3i - 2018'


