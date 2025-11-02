# Joins Queries - Airbnb Database

This script contains advanced SQL queries using different types of JOINs for the Airbnb database:

1. **INNER JOIN**: Retrieves all bookings and the respective users who made them.
2. **LEFT JOIN**: Retrieves all properties along with their reviews, including properties with no reviews.
3. **FULL OUTER JOIN**: Retrieves all users and all bookings, even if a user has no booking or a booking is not linked to a user.

These queries are part of the ALX Airbnb Database Module to practice advanced SQL querying and optimization.


# Advanced SQL Scripts - Airbnb Database

This directory contains advanced SQL scripts for the ALX Airbnb Database Module. 
It demonstrates complex querying, subqueries, aggregations, and window functions.

---

## 0. Joins Queries
This script contains SQL queries using different types of JOINs:

- **INNER JOIN**: Retrieves all bookings and the respective users who made them.
- **LEFT JOIN**: Retrieves all properties along with their reviews, including properties with no reviews.
- **FULL OUTER JOIN**: Retrieves all users and all bookings, even if a user has no booking or a booking is not linked to a user.

**File:** `joins_queries.sql`

---

## 1. Subqueries
This script demonstrates both correlated and non-correlated subqueries:

- **Non-Correlated Subquery**: Retrieves all properties where the average rating is greater than 4.0.
- **Correlated Subquery**: Retrieves users who have made more than 3 bookings.

**File:** `subqueries.sql`

---

## 2. Aggregations and Window Functions
This script demonstrates aggregation functions and window functions:

- **Aggregation**: Calculates the total number of bookings made by each user using `COUNT` and `GROUP BY`.
- **Window Function**: Ranks properties based on the total number of bookings they have received using `ROW_NUMBER()`.

**File:** `aggregations_and_window_functions.sql`
