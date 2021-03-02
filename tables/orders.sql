create table shop.orders(
    id serial primary key,
    shop_id integer,
    total_sum money,
    datetime timestamp,
    employee_id integer
)