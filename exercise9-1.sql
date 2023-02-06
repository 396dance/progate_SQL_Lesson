-- 男性向け、女性向け、男女兼用商品ごとに指定されたデータを取得してください
SELECT items.gender, SUM(items.price) AS "売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.gender;