SELECT nickname, id
FROM users
GROUP BY id
HAVING id IN (
    SELECT host_id
    FROM (
        SELECT room_id, paid, settling
        FROM reservations
        WHERE settling >= date_trunc('month', current_date - interval '1 month')
        AND settling < date_trunc('month', current_date)
    ) a
    FULL OUTER JOIN rooms b
    ON a.room_id=b.id
    GROUP BY b.host_id
    ORDER BY SUM(paid) DESC
    LIMIT 1
);
