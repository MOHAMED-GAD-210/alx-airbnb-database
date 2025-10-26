# Airbnb Database - ER Diagram Requirements

## 🎯 Objective
This document defines the entities, attributes, and relationships for the Airbnb-like database system.

---

## 🧩 Entities and Attributes

### 1. User
- user_id (PK)
- name
- email
- phone_number
- created_at

### 2. Property
- property_id (PK)
- user_id (FK → User)
- title
- description
- price_per_night
- location
- created_at

### 3. Booking
- booking_id (PK)
- user_id (FK → User)
- property_id (FK → Property)
- start_date
- end_date
- total_price
- status

### 4. Payment
- payment_id (PK)
- booking_id (FK → Booking)
- amount
- payment_date
- payment_method

### 5. Review
- review_id (PK)
- user_id (FK → User)
- property_id (FK → Property)
- rating
- comment
- created_at

---

## 🔗 Relationships

| Relationship | Type | Description |
|---------------|------|--------------|
| User → Property | 1:N | One user can list many properties |
| User → Booking | 1:N | One user can make many bookings |
| Property → Booking | 1:N | One property can have many bookings |
| Booking → Payment | 1:1 | Each booking has one payment |
| User → Review | 1:N | One user can write many reviews |
| Property → Review | 1:N | One property can have many reviews |

---

