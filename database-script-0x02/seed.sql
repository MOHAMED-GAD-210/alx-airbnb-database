-- =====================
-- Users Table
-- =====================
INSERT INTO Users (name, email, phone_number) VALUES
('Ali Ahmed', 'ali@example.com', '01001234567'),
('Sara Mohamed', 'sara@example.com', '01007654321'),
('Khaled Hassan', 'khaled@example.com', '01009876543');

-- =====================
-- Properties Table
-- =====================
INSERT INTO Properties (user_id, title, description, price_per_night, location) VALUES
(1, 'Cozy Apartment Downtown', 'A small but cozy apartment in the city center', 50.00, 'Cairo'),
(2, 'Beachside Villa', 'Luxury villa near the Red Sea', 120.00, 'Hurghada'),
(1, 'Studio Flat', 'Compact studio, perfect for short stays', 35.00, 'Alexandria');

-- =====================
-- Bookings Table
-- =====================
INSERT INTO Bookings (user_id, property_id, start_date, end_date, total_price, status) VALUES
(3, 1, '2025-11-01', '2025-11-05', 200.00, 'Confirmed'),
(2, 3, '2025-10-20', '2025-10-22', 70.00, 'Pending'),
(1, 2, '2025-12-01', '2025-12-10', 1080.00, 'Confirmed');

-- =====================
-- Payments Table
-- =====================
INSERT INTO Payments (booking_id, amount, payment_method) VALUES
(1, 200.00, 'Credit Card'),
(2, 70.00, 'Cash'),
(3, 1080.00, 'Paypal');

-- =====================
-- Reviews Table
-- =====================
INSERT INTO Reviews (user_id, property_id, rating, comment) VALUES
(3, 1, 5, 'Amazing place, very clean!'),
(2, 3, 4, 'Good stay, a bit noisy at night.'),
(1, 2, 5, 'Luxurious villa, highly recommended!');

