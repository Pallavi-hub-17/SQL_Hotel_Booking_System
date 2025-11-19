
-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS hotel_booking_systm;
USE hotel_booking_db;

-- Step 2: Customers table
CREATE TABLE IF NOT EXISTS customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT
);

-- Step 3: Rooms table
CREATE TABLE IF NOT EXISTS room (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10),
    room_type VARCHAR(50),
    price_per_night DECIMAL(10, 2),
    status ENUM('available', 'booked', 'maintenance') DEFAULT 'available'
);

-- Step 4: Staff table
CREATE TABLE IF NOT EXISTS staffs (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Step 5 : Amenities
CREATE TABLE amenities (
    amenity_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);
-- step 6 Booking
CREATE TABLE booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    room_id INT,
    check_in DATE,
    check_out DATE
);

-- Insert data
INSERT INTO customer (name, email, phone, address) VALUES
('Aarav Mehta', 'aarav.mehta@gmail.com', '9876543101', 'Delhi'),
('Isha Sharma', 'isha.sharma@gmail.com', '9876543102', 'Mumbai'),
('Rohan Patel', 'rohan.patel@gmail.com', '9876543103', 'Ahmedabad'),
('Sneha Rao', 'sneha.rao@gmail.com', '9876543104', 'Bangalore'),
('Ankit Verma', 'ankit.verma@gmail.com', '9876543105', 'Lucknow'),
('Pooja Nair', 'pooja.nair@gmail.com', '9876543106', 'Kochi'),
('Vikram Singh', 'vikram.singh@gmail.com', '9876543107', 'Jaipur'),
('Neha Das', 'neha.das@gmail.com', '9876543108', 'Kolkata'),
('Karan Joshi', 'karan.joshi@gmail.com', '9876543109', 'Pune'),
('Divya Iyer', 'divya.iyer@gmail.com', '9876543110', 'Chennai');

select * from customers;

INSERT INTO room (room_number, room_type, price_per_night, status) VALUES
('103', 'Single', 5000, 'available'),
('104', 'Double', 8000, 'available'),
('202', 'Suite', 6000, 'available'),
('203', 'Double', 8500, 'booked'),
('204', 'Single', 2000, 'maintenance'),
('301', 'Suite', 5800, 'available'),
('302', 'Double', 7000, 'booked'),
('303', 'Single', 1000, 'available'),
('304', 'Suite', 9000, 'maintenance'),
('305', 'Double', 6900, 'available');

select * from room;

INSERT INTO staffs (name, role, email, phone) VALUES
('Rajesh Kumar', 'Manager', 'rajesh.kumar@hotel.com', '9000000001'),
('Anjali Mishra', 'Receptionist', 'anjali.mishra@hotel.com', '9000000002'),
('Suresh Patil', 'Housekeeping', 'suresh.patil@hotel.com', '9000000003'),
('Kavita Reddy', 'Chef', 'kavita.reddy@hotel.com', '9000000004'),
('Mohit Bansal', 'Security', 'mohit.bansal@hotel.com', '9000000005'),
('Priya Menon', 'Waitress', 'priya.menon@hotel.com', '9000000006'),
('Arjun Desai', 'Bellboy', 'arjun.desai@hotel.com', '9000000007'),
('Sneha Kulkarni', 'Front Desk', 'sneha.kulkarni@hotel.com', '9000000008'),
('Vikram Gupta', 'Maintenance', 'vikram.gupta@hotel.com', '9000000009'),
('Ritika Shah', 'Spa Therapist', 'ritika.shah@hotel.com', '9000000010');

select * from staffs;

INSERT INTO amenities (name, description) VALUES
('Wi-Fi', 'High-speed wireless internet access'),
('Television', 'Flat-screen TV with cable and streaming options'),
('Air Conditioning', 'Temperature control for comfort'),
('Mini Bar', 'Refrigerated unit with snacks and beverages'),
('Room Service', 'In-room food and beverage delivery'),
('Jacuzzi', 'Private in-room hot tub'),
('Tea/Coffee Maker', 'Electric kettle with tea and coffee supplies'),
('Hair Dryer', 'Compact hair dryer available in bathroom'),
('In-room Safe', 'Secure safe for valuables'),
('Work Desk', 'Desk with lamp and power outlets for work');

select * from amenities;

INSERT INTO booking (customer_id, room_id, check_in, check_out) VALUES
(1, 203, '2025-07-01', '2025-07-05'),
(2, 302, '2025-07-02', '2025-07-04'),
(3, 104, '2025-07-03', '2025-07-08'),
(4, 202, '2025-07-01', '2025-07-06'),
(5, 103, '2025-07-04', '2025-07-07'),
(6, 305, '2025-07-05', '2025-07-10'),
(7, 301, '2025-07-02', '2025-07-09'),
(8, 203, '2025-07-10', '2025-07-13'),
(9, 104, '2025-07-06', '2025-07-08'),
(10, 302, '2025-07-07', '2025-07-09');

select * from booking;


















