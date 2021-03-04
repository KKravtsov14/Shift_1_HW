create or replace procedure get_shops_from_shop(
    p_shop_id in integer,
    p_names inout varchar(50)[]
)
as
$$
begin
    select array_agg(s.name)
      into p_names
      from shop.shops s
     where s.id = p_shop_id;
end;
$$ language plpgsql;