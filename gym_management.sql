CREATE DATABASE GymDB;
USE GymDB;

CREATE TABLE Membership_Plan (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(50),
    duration_months INT,
    price DECIMAL(10,2)
);

CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(100)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    join_date DATE,
    membership_status VARCHAR(20) DEFAULT 'Active',
    trainer_id INT,
    plan_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id),
    FOREIGN KEY (plan_id) REFERENCES Membership_Plan(plan_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO Membership_Plan VALUES 
(1, 'Monthly', 1, 1500.00),
(2, 'Quarterly', 3, 4000.00),
(3, 'Yearly', 12, 12000.00);

INSERT INTO Trainers VALUES 
(1, 'Rahul Sharma', 'Weight Training'),
(2, 'Priya Singh', 'Yoga'),
(3, 'Amit Kumar', 'Cardio');

INSERT INTO Members VALUES 
(1, 'Ankit Verma', 22, 'Male', '2025-01-15', 'Active', 1, 1),
(2, 'Sneha Gupta', 25, 'Female', '2025-02-20', 'Active', 2, 3),
(3, 'Rohit Mehta', 28, 'Male', '2025-03-10', 'Active', 3, 2);

INSERT INTO Payments VALUES 
(1, 1, 1500.00, '2025-01-15'),
(2, 2, 12000.00, '2025-02-20'),
(3, 3, 4000.00, '2025-03-10');