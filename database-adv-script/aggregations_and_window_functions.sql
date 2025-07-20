-- 1. Aggregation: Total number of bookings made by each user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id
ORDER BY total_bookings DESC;


-- 2. Window Function: Rank properties based on total number of bookings using RANK()
SELECT
    property_id,
    COUNT(*) AS booking_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id
ORDER BY booking_rank;


-- 3. Window Function: Assign a unique row number to each property based on booking count
SELECT
    property_id,
    COUNT(*) AS booking_count,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number
FROM bookings
GROUP BY property_id
ORDER BY row_number;
