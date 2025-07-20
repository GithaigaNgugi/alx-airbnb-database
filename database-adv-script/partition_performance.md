# Partitioning Performance Report

## Objective
The goal was to optimize the performance of queries on the `bookings` table by implementing **table partitioning** based on the `start_date` column.

## Partition Strategy
We used PostgreSQL's `PARTITION BY RANGE` feature and split the data by year:

- `bookings_2023`: All bookings from 2023
- `bookings_2024`: All bookings from 2024
- `bookings_2025`: All bookings from 2025

## Performance Test

### Query Tested:
```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
