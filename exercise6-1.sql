-- 売れた数が多い上位5商品のIDと名前、個数を取得してください
SELECT items.id, items.name, COUNT(*)
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY item_id
ORDER BY COUNT(*) DESC
LIMIT 5;