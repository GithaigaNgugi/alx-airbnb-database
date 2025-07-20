-- Step 1: Initial Query (Before optimization)
EXPLAIN
SELECT
    b.id AS booking_id,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE pay.status = 'completed'
  AND b.created_at >= '2024-01-01';

-- Step 2: Refactored Query (After optimization)
EXPLAIN
SELECT
    b.id AS booking_id,
    u.first_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE pay.status = 'completed'
  AND b.created_at >= '2024-01-01';
