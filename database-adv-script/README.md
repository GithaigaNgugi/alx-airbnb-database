## Join Queries

This directory (`database-adv-script/`) contains advanced SQL queries using different types of joins for the Airbnb clone project.

### Queries Included

1. **INNER JOIN** - Retrieves all bookings and the respective users who made those bookings.
2. **LEFT JOIN** - Retrieves all properties and their reviews, including properties that have no reviews.
3. **FULL OUTER JOIN** - Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.

Each query is written in the `joins_queries.sql` file.
## Subqueries

This section contains SQL queries using subqueries to perform advanced data filtering in the Airbnb clone database.

### Queries Included

1. **Non-Correlated Subquery**  
   Finds all properties where the average rating is greater than 4.0.

2. **Correlated Subquery**  
   Finds all users who have made more than 3 bookings.

The queries are located in the `subqueries.sql` file.
