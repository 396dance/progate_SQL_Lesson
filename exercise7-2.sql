-- 日ごとの売上額とその日付を取得してください
SELECT sales_records.purchased_at, SUM(price) AS "売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY purchased_at
ORDER BY purchased_at ASC;