-- G1_23BCS14207_SHIVAM;

SELECT DATE_FORMAT(trans_date,'%Y-%m') AS month
    ,country,count(trans_date) AS trans_count
    ,SUM(CASE WHEN state='approved' THEN 1 ELSE 0 END) AS approved_count ,
    SUM(CASE WHEN state='approved'THEN amount ELSE 0 END) AS trans_total_amount
    ,SUM(amount) as approved_total_amount
FROM Transactions
GROUP BY month,country;

