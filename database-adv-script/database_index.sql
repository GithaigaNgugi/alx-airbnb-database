-- Index on user ID for faster joins and lookups
CREATE INDEX idx_users_id ON users(id);

-- Index on property ID for joins and filtering
CREATE INDEX idx_properties_id ON properties(id);

-- Index on location for filtering/search
CREATE INDEX idx_properties_location ON properties(location);

-- Index on booking's user_id for joins
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on booking's property_id for joins
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
