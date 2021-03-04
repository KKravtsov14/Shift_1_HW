create or replace procedure insert_employee_to_employees(
    p_fio in varchar(50),
    p_position in varchar(50),
    p_manager_id in integer default NULL,
    p_shop_id in integer
)
as
$$
begin
    insert into shop.employees (fio, position, manager_id, shop_id)
    values (p_fio, p_position, p_manager_id, p_shop_id);
end
$$ language plpgsql