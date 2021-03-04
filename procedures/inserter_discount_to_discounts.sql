create or replace procedure insert_discount_to_discounts(
    p_type_id in integer,
    p_product_id in integer default NULL,
    p_group_id in integer default NULL,
    p_date_from in timestamp,
    p_date_to in timestamp,
    p_percent in double precision default NULL,
    p_fixed_sum in numeric default NULL
)
as
$$
begin
    insert into shop.discounts (type_id, product_id, group_id,
                                date_from, date_to, percent,
                                fixed_sum)
    values (type_id, product_id, group_id,
            date_from, date_to, percent,
            fixed_sum);
end
$$ language plpgsql