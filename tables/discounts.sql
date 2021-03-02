create table shop.discounts(
    id serial primary key,
    type_id varchar(50),
    product_id integer,
    group_id integer,
    date_from timestamp,
    date_to timestamp,
    percent double precision,
    fixed_sum numeric
)