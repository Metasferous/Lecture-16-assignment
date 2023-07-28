SELECT a.nickname, a.id
FROM users a
FULL OUTER JOIN reservations b
ON a.id = b.user_id
GROUP BY a.nickname, a.id
ORDER BY count(*) DESC
LIMIT 1;

