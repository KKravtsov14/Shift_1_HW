create or replace procedure get_shops_from_shop(
    p_product_id in integer,
    p_names inout varchar(50)[]
)
as
$$
begin
    select array_agg(pr.name)
      into p_names
      from shop.products pr
     where pr.id = p_product_id;
end;
$$ language plpgsql;