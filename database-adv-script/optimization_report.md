## Optimization Report

### Initial Query
The initial query joined four tables (bookings, users, properties, payments) and selected multiple fields including IDs and names. Performance analysis using `EXPLAIN` showed a full table scan on the `payments` table and nested loop joins due to lack of filtering.

### Inefficiencies Identified
- Selected unnecessary columns like IDs that weren’t used later.
- Some joins (e.g., payments) returned large result sets without filtering or indexes.

### Refactored Query
- Removed unused columns to reduce payload.
- Ensured indexes existed on `user_id`, `property_id`, and `booking_id`.
- Verified improved query plan using `EXPLAIN`.

### Result
The refactored query reduced total execution time and memory usage by focusing only on required fields and avoiding unnecessary computation.
