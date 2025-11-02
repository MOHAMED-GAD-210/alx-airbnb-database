-- =============================
-- Measure query performance BEFORE adding indexes
-- =============================

-- Check bookings by user_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

-- Check bookings by property_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 10;

-- Check properties by location
EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Cairo';

-- Check users by email
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'example@email.com';


-- =============================
-- Create Indexes
-- =============================

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_date ON bookings(booking_date);
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_users_email ON users(email);


-- =============================
-- Measure query performance AFTER adding indexes
-- =============================

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 10;

EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Cairo';

EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'example@email.com';
