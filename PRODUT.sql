create table if not exists products(
product_id char(1)
product_name text,
supplier_id char(1),
category_id char(1),
unit_text text,
price_real decimal(5,2)
);
insert into products (product_id, product_name, supplier_id, category_id, price_real) values
('1', 'chais', '1', '1', '10boxes*20bags',18),
('2', 'chars', '1', '1', '24-12 oz bottles',19),
('3', 'chor', '1', '2', '12-550 ml bottles',10),
('4', 'chef', '1', '5', '148-6 oz jars',22),
('1', 'chef anton', '2', '3', '36boxes',21.35);

select count (product_id) as product_count
from products;

select avg(price) as average_price
from products;

select sum(price) as total_price
from products;

select DISTINCT supplier_id
from products;

select all(supplier_id)
from products;

select supplier_id, category_id
from products;