# Airbnb Database – Seeding Script

## 📁 Directory
`database-script-0x02/`

## 📄 Files

### `seed.sql`
Contains SQL `INSERT` statements to populate the following tables with realistic sample data:

- `User`
- `Property`
- `Booking`
- `Payment`
- `Review`
- `Message`

Sample data includes:
- Multiple users with host and guest roles.
- Listings for properties across different cities.
- Bookings with matching start/end dates and total prices.
- Payment linked to a booking.
- Guest reviews with ratings and comments.
- User messages between guests and hosts.

### 💡 Usage

1. Run the schema creation script first (e.g. `schema.sql`).
2. Then run `seed.sql`:
```bash
psql -U your_user -d your_database -f seed.sql

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
