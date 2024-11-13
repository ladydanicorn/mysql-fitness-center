CREATE DATABASE fitness_center_db;

USE fitness_center_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1
INSERT INTO Members (id, name, age) VALUES
(1, 'John Smith', 28),
(2, 'Sarah Lee', 35),
(3, 'Katrina Reed', 42),
(4, 'Jane Doe', 24),
(5, 'David Lee', 31);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(101, 1, '2024-03-15', '09:00 AM', 'Barre'),
(102, 2, '2024-03-15', '10:30 AM', 'Yoga'),
(103, 3, '2024-03-15', '02:00 PM', 'Running'),
(104, 4, '2024-03-15', '04:30 PM', 'Spinning'),
(105, 5, '2024-03-15', '06:00 PM', 'Weight Training'),
(106, 1, '2024-03-16', '10:00 AM', 'Dance'),
(107, 2, '2024-03-16', '03:00 PM', 'CrossFit');

-- Task 2
UPDATE WorkoutSessions 
SET session_time = '06:00 PM'
WHERE member_id = 4 
AND session_date = '2024-03-16';

-- Task 3

DELETE FROM WorkoutSessions 
WHERE member_id = 1; 

DELETE FROM Members 
WHERE id = 1;