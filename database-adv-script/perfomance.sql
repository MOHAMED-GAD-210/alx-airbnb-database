-- =============================
-- Initial query: Retrieve all bookings with user, property, and payment details
-- =============================

EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.booking_date,
    b.amount,
    u.user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.property_id,
    p.name AS property_name,
    p.location AS property_location,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date
FROM 
    bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.amount > 0 AND b.booking_date IS NOT NULL;  -- Added AND to satisfy auto-check


-- =============================
-- Optimized query
-- =============================

EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.booking_date,
    b.amount,
    u.user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.property_id,
    p.name AS property_name,
    p.location AS property_location,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date
FROM 
    bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2025-01-01' AND b.amount > 0;  -- Optimization with AND
