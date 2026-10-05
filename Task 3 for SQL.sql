Create database ecommerce;
Use ecommerce;

select * from ecommerce_sales;

-- 1. Find products revenue more than 4000 --
select * from ecommerce_sales where revenue >4000;

-- 2. Sort product price --
select * from ecommerce_sales order by unit_price desc;

-- 3.Count total customers --
select count(*) as total_customer from ecommerce_sales;

-- 4. Find average product revenue --
select avg(revenue) as averrage_revenue from ecommerce_sales;

-- 5. find total salas by product --
select product_category,
sum(quantity * unit_price) as total_sales
from ecommerce_sales
group by product_category;

-- 6. find products priced above average --
select product_category, revenue
from ecommerce_sales
where revenue > (select avg(product_category) from ecommerce_sales);

-- 7. create view --
create view Product_View as select product_category, revenue from ecommerce_sales;

select * from Product_View;

-- 8. find customer from south --
select * from ecommerce_sales where region ="South";

-- 9. find customer from Clothing --
select * from ecommerce_sales where product_category="Clothing";

-- 10. find higest revenue by product --
select product_category,
sum(quantity * unit_price) as total_sales
from ecommerce_sales
group by product_category
order by total_sales desc limit 1;

-- having ---
select product_category, count(*) as revenue 
from ecommerce_sales
group by product_category
having count(*)>1;


