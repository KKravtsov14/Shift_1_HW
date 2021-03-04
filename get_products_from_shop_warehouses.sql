create or replace procedure get_products_from_shop(
    p_shop_id     in    integer,
    p_products_id inout integer[],
    p_quantities  inout numeric[]
)
as
$$
begin
    select array_agg(sw.product_id),
           array_agg(sw.quantity)
      into p_products_id,
           p_quantities
      from shop.shop_warehouses sw
     where sw.shop_id = p_shop_id;
end;
$$ language plpgsql;