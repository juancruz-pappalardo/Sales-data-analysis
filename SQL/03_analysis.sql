use sales_db;

-- =====================================
-- Bloque A - Validación de datos
-- =====================================
select count(*) as total_orders from orders_clean;

select sum(total) as total_revenue from orders_clean;

select 
    sum(case when customer_name is null then 1 else 0 end) as missing_customer,
    sum(case when email is null then 1 else 0 end) as missing_email
from orders_clean;

-- =====================================
-- Bloque B - Análisis de negocio 
-- =====================================
select country, sum(total) as revenue
from orders_clean
group by country
order by revenue desc;

select country, count(*) as total_orders
from orders_clean
group by country
order by total_orders desc;

select count(distinct email) as unique_customers
from orders_clean
where email is not null;

-- =====================================
-- Bloque C - Categorías y productos
-- =====================================
select category, sum(total) as revenue
from orders_clean
group by category
order by revenue desc;

select product, sum(total) as revenue
from orders_clean
group by product
order by revenue desc
limit 5;

-- =====================================
-- Bloque D - Uso de CASE + agregaciones
-- =====================================
select 
    case 
        when total >= 1000 then 'Orden grande'
        when total >= 300 then 'Orden media'
        else 'Orden chica'
    end as order_size,
    count(*) as total_orders,
    sum(total) as revenue
from orders_clean
group by order_size;

-- =====================================
-- Bloque E - Window functions
-- =====================================
select
    customer_name,
    sum(total) as total_spent,
    dense_rank() over (order by sum(total) desc) as ranking
from orders_clean
where customer_name is not null
group by customer_name;

-- =====================================
-- Bloque F - JOINs
-- =====================================
select
    o.order_id,
    o.order_date,
    c.customer_name,
    c.country,
    o.total
from orders_clean o
join customer c
    on o.email = c.email;

select
    c.customer_name,
    sum(o.total) as total_spent
from orders_clean o
join customer c
    on o.email = c.email
group by c.customer_name
order by total_spent desc;
