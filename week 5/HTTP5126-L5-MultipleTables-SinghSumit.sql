--  SUMIT SINGH - LAB 5 MULTIPLE TABLES
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
-- A 
SELECT * FROM sales WHERE item = 1014;
-- B 
SELECT sa.date, st.item FROM sales sa JOIN stock_items st ON sa.item = st.id WHERE sa.item = 1014;

-- 2
-- A 
SELECT * FROM sales WHERE employee = 111;
-- B
SELECT sa.date, em.first_name, em.last_name, sa.item FROM sales sa JOIN employees em ON sa.employee = em.id WHERE sa.employee = 111;

-- 3
-- A
SELECT sa.date, sa.item, em.first_name FROM sales sa JOIN employees em ON sa.employee = em.id WHERE sa.date BETWEEN '2024-09-12' AND '2024-09-18';
-- B
SELECT em.first_name, em.last_name, COUNT(sa.id) AS sales_count FROM sales sa JOIN employees em ON sa.employee = em.id GROUP BY em.first_name, em.last_name ORDER BY sales_count DESC;

-- 4
-- A
SELECT sa.date, st.item, st.price, st.category, em.first_name FROM sales sa JOIN stock_items st ON sa.item = st.id JOIN employees em ON sa.employee = em.id WHERE sa.employee = (SELECT em.id FROM sales sa JOIN employees em ON sa.employee = em.id GROUP BY em.id ORDER BY COUNT(sa.id) DESC LIMIT 1);
-- B
SELECT st.id, st.item, st.price, st.category, COUNT(sa.id) AS times_sold FROM stock_items st LEFT JOIN sales sa ON st.id = sa.item GROUP BY st.id ORDER BY st.id;

-- 5
-- A Which employee has sold the highest number of items in each month of the year?
-- B 
SELECT em.id, em.first_name, em.last_name, MONTH(sa.date) AS sales_month, COUNT(sa.item) AS items_sold FROM  sales sa JOIN employees em ON sa.employee = em.id GROUP BY em.id, em.first_name, em.last_name, MONTH(sa.date) ORDER BY sales_month, items_sold DESC;