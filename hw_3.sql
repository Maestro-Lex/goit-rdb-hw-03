CREATE SCHEMA IF NOT EXISTS hw_3;

USE hw_3;

-- вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products
SELECT *
FROM products;

-- вибрати тільки стовпчики name, phone з таблиці shippers
SELECT name, phone
FROM  shippers;

-- знайти середнє, максимальне та мінімальне значення стовпчика price таблички products
SELECT AVG(price), MIN(price), MAX(price)
FROM products;

-- обрати унікальні значення колонок category_id та price таблиці products
-- оберіть порядок виведення на екран за спаданням значення price 
-- та виберіть тільки 10 рядків
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

-- знайти кількість продуктів (рядків), які знаходиться в цінових межах від 20 до 100
-- 1. включно із межами за допомогою "BETWEEN"
SELECT COUNT(*)
FROM products
WHERE price BETWEEN 20 AND 100;
-- 2. не включаючі межі за допомогою "AND"
SELECT COUNT(*)
FROM products
WHERE price > 20 AND price < 100;

-- знайти кількість продуктів (рядків) та середню ціну (price) 
-- у кожного постачальника (supplier_id)
SELECT supplier_id, COUNT(*) AS total, ROUND(AVG(price), 2) AS avg_price
FROM products
GROUP BY supplier_id;