# Partitioning Performance Report - Airbnb Database

## Objective
Optimize query performance on the large Bookings table by implementing partitioning based on the `booking_date` column.

## Approach
1. Created a partitioned table `bookings_partitioned` using RANGE partitioning on `booking_date`.
2. Created separate partitions for each year (e.g., 2024, 2025).
3. Migrated existing booking data into the partitioned table.
4. Tested query performance for fetching bookings within a specific date range using `EXPLAIN ANALYZE`.

## Observed Improvements
- Queries filtered by `booking_date` now scan only the relevant partition instead of the entire table.
- Significant reduction in query execution time for date-range queries.
- Easier maintenance and scalability for very large datasets.

## Notes
- Additional partitions can be added for future years.
- Indexes can also be applied to partitions for further performance gains.
