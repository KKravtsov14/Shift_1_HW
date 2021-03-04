create or replace procedure updater_shop_warehouses(
    p_shop_id in integer,
    p_product_id in integer
)
as
$$
begin
    update shop.shop_warehouses
    set shop_id = p_shop_id
    where product_id = p_product_id;
end;
$$

/* добавить проверку на наличие товара на новом складе