# Optimization Report - Complex Queries

## Initial Query
The initial query retrieves all bookings along with user, property, and payment details. It joins 3 tables and performs a LEFT JOIN on payments.

### Observed Inefficiencies:
- Scans all bookings, even old ones, causing longer execution times.
- Joins on large tables without indexes can be slow.
- LEFT JOIN on payments may scan all payment records.

## Optimized Query
- Added a filter on `booking_date` to reduce scanned rows.
- Recommended creating indexes on:
  - `bookings.user_id`
  - `bookings.property_id`
  - `bookings.booking_date`

### Performance Improvement:
- Filtering reduces the number of rows processed.
- Indexes improve join and filter efficiency.
- Overall query execution time is reduced.
