create table shop.shops(
    id serial primary key,
    name varchar(50),
    manager_id integer,
    address varchar(100)
)