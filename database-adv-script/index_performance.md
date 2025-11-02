# Indexes and Performance Optimization - Airbnb Database

This document explains the indexes created on the Airbnb database to optimize query performance.

---

## 1. Identifying high-usage columns
Columns that are frequently used in WHERE, JOIN, and ORDER BY clauses:

- **users table**: user_id (primary key), email (often used in searches)
- **bookings table**: booking_id (primary key), user_id (foreign key), property_id (foreign key), booking_date (used in queries by date)
- **properties table**: property_id (primary key), location (used in filters), name (used in searches)

---

## 2. Creating Indexes
SQL commands to create indexes:

```sql
-- Index on bookings.user_id for faster joins with users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for faster joins with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on bookings.booking_date for faster filtering by date
CREATE INDEX idx_bookings_date ON bookings(booking_date);

-- Index on properties.location for faster filtering/search
CREATE INDEX idx_properties_location ON properties(location);

-- Index on users.email for faster search by email
CREATE INDEX idx_users_email ON users(email);
