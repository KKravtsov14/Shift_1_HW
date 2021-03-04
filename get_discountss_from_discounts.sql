create or replace procedure get_discounts_from_discounts(
    p_discount_id in integer,
    p_date_from in timestamp,
    p_date_to in timestamp,
    p_discounts_id inout integer[]
)
as
$$
begin
    select array_agg(d.id)
      into p_discounts_id
      from shop.discounts d
     where d.id = p_discount_id and
           (d.date_from >= p_date_from or d.date_to <= p_date_to);
end;
$$ language plpgsql;