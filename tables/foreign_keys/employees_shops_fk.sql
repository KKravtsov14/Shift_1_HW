alter table shop.shops
add constraint employees_shops_fk foreign key (manager_id)
references shop.employees (id)