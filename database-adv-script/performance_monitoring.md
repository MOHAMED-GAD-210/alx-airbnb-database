# Database Performance Monitoring and Optimization

## 1. Monitoring Query Performance

We used `EXPLAIN ANALYZE` (PostgreSQL / SQLite) or `EXPLAIN` (MySQL) to analyze the execution of frequently used queries.

### Example Query 1: Fetch bookings by user
```sql
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 123;

# Database Performance Monitoring and Optimization

## 1. Monitoring Query Performance

We used `EXPLAIN ANALYZE` (PostgreSQL / SQLite) or `EXPLAIN` (MySQL) to analyze the execution of frequently used queries.

### Example Query 1: Fetch bookings by user
```sql
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 123;
