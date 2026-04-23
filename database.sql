create database hostel;
use hostel;

CREATE TABLE hostel_dues (
    roll_no VARCHAR(20) PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    mess_bill INT,
    hostel_bill INT,
    total_bill INT,
    paid_amount INT,
    due_amount INT,
    fine INT DEFAULT 0,
    status VARCHAR(20),
    email VARCHAR(100),
	last_payment_date DATE
);
INSERT INTO hostel_dues VALUES
('101', 'Vanshdeep Sharma', 'ECE', 3000, 2000, 5000, 5000, 0, 0, 'CLEARED', 'shikhavansh1980@gmail.com', '2026-03-01'),

('102', 'Aman Verma', 'CSE', 2500, 2000, 4500, 3000, 1500, 0, 'PENDING', 'aman@gmail.com', '2026-03-10'),

('103', 'Priya Singh', 'IT', 2800, 2200, 5000, 0, 5000, 100, 'PENDING', 'priya@gmail.com', '2026-03-05');

select* from hostel_dues;
