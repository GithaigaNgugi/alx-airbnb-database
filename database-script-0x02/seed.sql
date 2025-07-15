-- =====================
-- SEED DATA FOR AIRBNB DATABASE
-- =====================

-- Users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', '1234567890', 'host'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Jones', 'bob@example.com', 'hashed_pw_2', '0987654321', 'guest'),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Lee', 'carol@example.com', 'hashed_pw_3', NULL, 'guest');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaa1111-aaaa-1111-aaaa-111111111111', '11111111-1111-1111-1111-111111111111',
 'Cozy Cottage', 'A small cozy cottage in the woods.', 'Asheville, NC', 120.00),
('bbbb2222-bbbb-2222-bbbb-222222222222', '11111111-1111-1111-1111-111111111111',
 'Urban Loft', 'Modern loft in the city center.', 'New York, NY', 250.00);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('book1111-book-1111-book-111111111111', 'aaaa1111-aaaa-1111-aaaa-111111111111',
 '22222222-2222-2222-2222-222222222222', '2025-08-01', '2025-08-05', 480.00, 'confirmed'),
('book2222-book-2222-book-222222222222', 'bbbb2222-bbbb-2222-bbbb-222222222222',
 '33333333-3333-3333-3333-333333333333', '2025-09-10', '2025-09-12', 500.00, 'pending');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay1111-pay1-1111-pay1-111111111111', 'book1111-book-1111-book-111111111111', 480.00, 'credit_card');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('rev11111-rev1-1111-rev1-111111111111', 'aaaa1111-aaaa-1111-aaaa-111111111111',
 '22222222-2222-2222-2222-222222222222', 5, 'Absolutely loved it! Peaceful and clean.'),
('rev22222-rev2-2222-rev2-222222222222', 'bbbb2222-bbbb-2222-bbbb-222222222222',
 '33333333-3333-3333-3333-333333333333', 4, 'Great location, but a bit noisy.');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('msg1111-msg1-1111-msg1-111111111111', '22222222-2222-2222-2222-222222222222',
 '11111111-1111-1111-1111-111111111111', 'Hi, is the cottage available in early August?'),
('msg2222-msg2-2222-msg2-222222222222', '11111111-1111-1111-1111-111111111111',
 '22222222-2222-2222-2222-222222222222', 'Yes, it is available! Let me know the dates.');
