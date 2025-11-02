-- Non-correlated subquery: properties with avg rating > 4.0
SELECT 
    property_id,
    name AS property_name,
    location
FROM 
    properties
WHERE 
    property_id IN (
        SELECT 
            property_id
        FROM 
            reviews
        GROUP BY 
            property_id
        HAVING 
            AVG(rating) > 4.0
    );
-- Correlated subquery: users with more than 3 bookings
SELECT 
    u.user_id,
    u.name AS user_name,
    u.email
FROM 
    users u
WHERE 
    (SELECT COUNT(*) 
     FROM bookings b 
     WHERE b.user_id = u.user_id) > 3;
