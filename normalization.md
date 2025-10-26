# Airbnb Database - Normalization Process

## 🎯 Objective
To ensure that the Airbnb database design adheres to the Third Normal Form (3NF), minimizing redundancy and maintaining data integrity.

---

## 🧩 1st Normal Form (1NF)
- Each table has a primary key.
- All columns contain atomic (indivisible) values.
- No repeating groups or arrays.

✅ Example:
- In the `User` table, each user has a single `phone_number` per row.
- The `Booking` table has one `property_id` and one `user_id` per booking.

---

## 🧩 2nd Normal Form (2NF)
- All non-key attributes depend on the entire primary key.
- No partial dependencies.

✅ Example:
- In the `Booking` table, attributes such as `start_date`, `end_date`, and `total_price` depend on `booking_id`, not partially on `user_id` or `property_id`.

---

## 🧩 3rd Normal Form (3NF)
- No transitive dependencies (non-key attributes do not depend on other non-key attributes).
- Each non-key attribute depends only on the primary key.

✅ Example:
- In the `Property` table, attributes such as `price_per_night` and `location` depend only on `property_id`.
- No derived data or computed fields are stored.

---

## ✅ Conclusion
All tables in the Airbnb database design satisfy 3NF:
- No redundant data
- No update or insertion anomalies
- Strong data integrity and scalability

Therefore, the database is **fully normalized to 3NF**.
