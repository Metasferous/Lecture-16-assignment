SELECT nickname, id
FROM users a
FULL OUTER JOIN (
    SELECT * FROM (
        SELECT host_id, AVG(rate) AS avg_rate
        FROM reviews
        GROUP BY host_id
        HAVING host_id IN (
            SELECT DISTINCT host_id
            FROM reviews
        )
    ) AS avg_rates
    GROUP BY avg_rate, host_id
    ORDER BY avg_rate DESC
    LIMIT 1
) b
ON a.id=b.host_id
ORDER BY b.avg_rate
LIMIT 1;

