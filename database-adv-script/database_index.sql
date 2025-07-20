-- Create indexes to improve performance

-- Index on user ID
CREATE INDEX idx_users_id ON users(id);

-- Index on property ID
CREATE INDEX idx_properties_id ON properties(id);

-- Index on property location
CREATE INDEX idx_properties_location ON properties(location);

-- Index on booking's user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on booking's property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Measure query performance using EXPLAIN ANALYZE (after indexes)
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 'abc-123';

EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Nairobi';
