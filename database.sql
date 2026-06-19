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
-- ('101', 'Vanshdeep Sharma', 'UIET', 3000, 2000, 5000, 5000, 0, 0, 'CLEARED', 'vanshdeepsharm33@gmail.com', '2026-03-01'),
-- ('102', 'Aman Verma', 'UILS', 2500, 2000, 4500, 3000, 1500, 0, 'PENDING', 'amanverma@gmail.com', '2026-03-10'),
-- ('103', 'Priya Singh', 'Laws', 2800, 2200, 5000, 0, 5000, 100, 'PENDING', 'priyasingh@gmail.com', '2026-03-05'),
-- ('104', 'Arush Singh', 'UICET', 2900, 2100, 5000, 0, 5000, 100, 'PENDING', 'arushsingh@gmail.com', '2026-03-05'),
('105','Rahul Kumar','UIET',3000,2000,5000,5000,0,0,'CLEARED','rahul105@gmail.com','2026-03-05'),
('106','Simran Kaur','UILS',2500,2000,4500,3000,1500,0,'PENDING','simran106@gmail.com','2026-03-06'),
('107','Karan Sharma','LAWS',2800,2200,5000,2500,2500,100,'PENDING','karan107@gmail.com','2026-03-07'),
('108','Neha Gupta','UICET',2900,2100,5000,5000,0,0,'CLEARED','neha108@gmail.com','2026-03-08'),
('109','Rohit Singh','UIET',3000,2000,5000,3500,1500,0,'PENDING','rohit109@gmail.com','2026-03-09'),
('110','Anjali Verma','UILS',2500,2000,4500,4500,0,0,'CLEARED','anjali110@gmail.com','2026-03-10'),
('111','Vikas Sharma','LAWS',2800,2200,5000,5000,0,0,'CLEARED','vikas111@gmail.com','2026-03-11'),
('112','Pooja Gupta','UICET',2900,2100,5000,2000,3000,100,'PENDING','pooja112@gmail.com','2026-03-12'),
('113','Arjun Singh','UIET',3000,2000,5000,5000,0,0,'CLEARED','arjun113@gmail.com','2026-03-13'),
('114','Riya Sharma','UILS',2500,2000,4500,2500,2000,100,'PENDING','riya114@gmail.com','2026-03-14'),
('115','Mohit Verma','LAWS',2800,2200,5000,5000,0,0,'CLEARED','mohit115@gmail.com','2026-03-15'),
('116','Sneha Kaur','UICET',2900,2100,5000,3000,2000,0,'PENDING','sneha116@gmail.com','2026-03-16'),
('117','Nitin Kumar','UIET',3000,2000,5000,5000,0,0,'CLEARED','nitin117@gmail.com','2026-03-17'),
('118','Isha Gupta','UILS',2500,2000,4500,2000,2500,100,'PENDING','isha118@gmail.com','2026-03-18'),
('119','Harsh Sharma','LAWS',2800,2200,5000,5000,0,0,'CLEARED','harsh119@gmail.com','2026-03-19'),
('120','Sakshi Verma','UICET',2900,2100,5000,3500,1500,0,'PENDING','sakshi120@gmail.com','2026-03-20'),
('121','Amit Singh','UIET',3000,2000,5000,5000,0,0,'CLEARED','amit121@gmail.com','2026-03-21'),
('122','Muskan Sharma','UILS',2500,2000,4500,4500,0,0,'CLEARED','muskan122@gmail.com','2026-03-22'),
('123','Rahul Gupta','LAWS',2800,2200,5000,2500,2500,100,'PENDING','rahul123@gmail.com','2026-03-23'),
('124','Priyanka Kaur','UICET',2900,2100,5000,5000,0,0,'CLEARED','priyanka124@gmail.com','2026-03-24'),
('125','Deepak Sharma','UIET',3000,2000,5000,3000,2000,0,'PENDING','deepak125@gmail.com','2026-03-25');

select* from hostel_dues;
