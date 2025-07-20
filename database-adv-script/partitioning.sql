-- Step 1: Rename the original bookings table
ALTER TABLE bookings RENAME TO bookings_old;

-- Step 2: Create a new partitioned bookings table
CREATE TABLE bookings (
    id UUID NOT NULL,
    user_id UUID NOT NULL,
    property_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    created_at TIMESTAMP,
    PRIMARY KEY (id, start_date)
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions for each year
CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 4: Insert data from the old table (optional - only if needed for testing)
INSERT INTO bookings
SELECT * FROM bookings_old;

-- Step 5: Query to test performance
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
