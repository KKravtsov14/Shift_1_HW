create or replace procedure insert_product_to_shop_warehouse(
    p_product_id in integer,
    p_quantity in numeric,
    p_shop_id in integer
)
as
$$
begin
    insert into shop.shop_warehouses (shop_id, product_id, quantity)
    values (p_shop_id, p_product_id, p_quantity);
end
$$ language plpgsql


/* добавить проверку на наличие товара на складе