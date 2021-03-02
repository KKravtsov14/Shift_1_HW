alter table shop.employees
add constraint shops_employees_fk foreign key (shop_id)
references shop.shops (id)