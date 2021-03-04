create or replace procedure updater_shop_id_in_employee(
    p_shop_id in integer,
    p_previous_shop_id in integer
)
as
$$
begin
    update shop.employees
    set shop_id = p_shop_id
    where shop_id = p_previous_shop_id;
end;

$$