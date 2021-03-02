INSERT INTO shop.product_groups(group_name, parent_group_id)
VALUES
       ('household appliances', NULL),
       ('multimedia', NULL),
       ('digital technology', NULL),

       ('kitchen appliances', 1),
       ('laundry appliances', 1),
       ('gas appliances', 1),
       ('built-in appliances', 1),

       ('video', 2),
       ('set-top boxes', 2),
       ('audio', 2),

       ('laptops', 3),
       ('stationary computers', 3),
       ('game consoles', 3),
       ('smartphones', 3),

       ('refrigerators', 4),
       ('kettles', 4),
       ('cooker', 4),
       ('hoods', 4),
       ('dishwasher', 4),

       ('dryer', 5),
       (' washing machine', 5),

       ('gas boilers', 6),
       ('gas stoves', 6),
       ('gas heaters', 6),

       ('built-in refrigerators', 7),
       ('built-in cookers', 7),
       ('built-in washing machines', 7),
       ('built-in dishwashers', 7),

       ('TVs', 8),
       ('monitors', 8),
       ('home theaters', 8),

       ('Wi-Fi', 9),
       ('satellite boxes', 9),

       ('combo boxes', 10),
       ('stereos', 10),
       ('speakers', 10),

       ('laptops', 11),
       ('gaming laptops', 11),
       ('netbooks', 11),

       ('gaming stationary computers', 12),
       ('kits', 12),
       ('stationary computers', 12),

       ('xbox', 12),
       ('nintendo', 12),
       ('playstation', 12),
       ('accessories', 12),

       ('tablets', 12),
       ('iphone', 12),
       ('samsung', 12),
       ('honor', 12),
       ('xiomi', 12)

SELECT
FROM product_groups p
LEFT JOIN product_groups p2 on p.id = p.parent_group_id