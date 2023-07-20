SELECT nickname, id
FROM users
GROUP BY id
HAVING id IN (
    SELECT user_id
    FROM reservations
    GROUP BY user_id
    ORDER BY count(*) DESC
    LIMIT 1
);

