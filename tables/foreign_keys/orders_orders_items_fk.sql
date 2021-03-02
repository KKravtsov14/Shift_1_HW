alter table shop.orders_items
add constraint orders_orders_items_fk foreign key (order_id)
references shop.orders (id)