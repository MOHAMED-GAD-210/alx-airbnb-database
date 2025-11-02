-- INNER JOIN between bookings and users
SELECT 
    b.booking_id,
    b.property_id,
    b.booking_date,
    b.amount,
    u.user_id,
    u.name AS user_name,
    u.email AS user_email
FROM 
    bookings b
INNER JOIN 
    users u
ON 
    b.user_id = u.user_id;

-- LEFT JOIN between properties and reviews
SELECT 
    p.property_id,
    p.name AS property_name,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM 
    properties p
LEFT JOIN 
    reviews r
ON 
    p.property_id = r.property_id;

-- FULL OUTER JOIN between users and bookings
SELECT 
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.booking_date
FROM 
    users u
FULL OUTER JOIN 
    bookings b
ON 
    u.user_id = b.user_id
ORDER BY 
    u.user_id, b.booking_id;



Add joins_queries.sql with INNER, LEFT, and FULL OUTER JOIN queries
