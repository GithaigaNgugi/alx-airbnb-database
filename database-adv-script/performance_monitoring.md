# Database Performance Monitoring Report

## Objective
To improve and maintain optimal database performance by analyzing query execution plans and making informed schema adjustments.

---

## 1. Monitoring Tools Used

- **EXPLAIN ANALYZE**: Used to view the query execution plan and measure actual run-time performance.
- **pg_stat_statements** (PostgreSQL extension): Tracked long-running queries (optional but recommended).

---

## 2. Frequently Used Queries Analyzed

### Query 1: Retrieve all bookings for a specific user
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 'abc123';
