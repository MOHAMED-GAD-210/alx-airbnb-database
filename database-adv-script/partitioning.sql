-- =============================
-- Step 1: Create a partitioned table for bookings
-- =============================

-- Create a new partitioned table
CREATE TABLE bookings_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    amount NUMERIC(10,2),
    booking_date DATE NOT NULL
) PARTITION BY RANGE (booking_date);

-- =============================
-- Step 2: Create partitions by year
-- =============================

CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Add more partitions as needed

-- =============================
-- Step 3: Insert data from old bookings table
-- =============================

INSERT INTO bookings_partitioned (booking_id, user_id, property_id, amount, booking_date)
SELECT booking_id, user_id, property_id, amount, booking_date
FROM bookings;

-- =============================
-- Step 4: Test performance on partitioned table
-- =============================

-- Example query: fetch bookings in 2025
EXPLAIN ANALYZE
SELECT * 
FROM bookings_partitioned
WHERE booking_date BETWEEN '2025-01-01' AND '2025-12-31';
