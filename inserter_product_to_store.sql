create or replace procedure insert_product_to_store(
    p_group_id in integer default NULL,
    p_price in money,
    p_quantity_type_id in integer,
    p_name in varchar(50)
)
as
$$
begin
    insert into shop.products (group_id, price, quantity_type_id, name)
    values (p_group_id, p_price, p_quantity_type_id, p_name);
end
$$ language plpgsql