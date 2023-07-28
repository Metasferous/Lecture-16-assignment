SELECT a.nickname, a.id
FROM users a
FULL OUTER JOIN reviews b
ON a.id = b.host_id
GROUP BY a.id
ORDER BY AVG(b.rate)
LIMIT 1;
