SELECT 
    p.property_id,
    p.name
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_number_rank,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM 
    property p
LEFT JOIN 
    booking b ON p.property_id = b.property_id
GROUP BY 
    p.property_id;

/* ROW_NUMBER() => Even if two properties have the same count, they get different numbers (no ties).
RANK() => Assigns ranking positions but allows ties (equal totals share the same rank). */








-- 1. Total number of bookings per user
SELECT 
    u.user_id,
    u.name AS user_name,
    COUNT(b.booking_id) AS total_bookings
FROM 
    users u
LEFT JOIN 
    bookings b
ON 
    u.user_id = b.user_id
GROUP BY 
    u.user_id, u.name;

-- 2. ROW_NUMBER directly in a simple query
SELECT 
    p.property_id,
    p.name AS property_name,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM 
    properties p
LEFT JOIN 
    bookings b
ON 
    p.property_id = b.property_id
GROUP BY 
    p.property_id, p.name;
