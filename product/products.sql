create table crops (id serial primary key, product text unique not null, price int not null, kilogram int not null, dete timestamp default now());--  A table was created with columns for product_name, price, weight, and created_at. The product names must be unique, and the price and weight columns cannot be empty.
insert into crops (product, price, kilogram ) values("patades", 13, 200);--Data has been inserted and demonstrated in practice.
select * from crops  order by product limit 10;--Display only 10 records from all the data, ordered by the product column alphabetically from A to Z. 
