-- Total number of bookings per user
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
    u.user_id, u.name
ORDER BY 
    total_bookings DESC;
-- Rank properties based on total bookings
SELECT 
    property_id,
    name AS property_name,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        p.property_id,
        p.name,
        COUNT(b.booking_id) AS total_bookings
    FROM 
        properties p
    LEFT JOIN 
        bookings b
    ON 
        p.property_id = b.property_id
    GROUP BY 
        p.property_id, p.name
) AS property_bookings;
