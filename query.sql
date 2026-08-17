-- =========================
-- SAMPLE QUERIES FOR REPORTS
-- =========================

-- 1. Saare Active Members
SELECT * FROM Members WHERE membership_status = 'Active';

-- 2. Member + Trainer + Plan Details
SELECT m.name AS Member, t.name AS Trainer, p.plan_name, p.price 
FROM Members m
JOIN Trainers t ON m.trainer_id = t.trainer_id
JOIN Membership_Plan p ON m.plan_id = p.plan_id;

-- 3. Total Revenue
SELECT SUM(amount) AS Total_Revenue FROM Payments;

-- 4. Har Plan me kitne Members
SELECT p.plan_name, COUNT(m.member_id) AS Total_Members
FROM Membership_Plan p
LEFT JOIN Members m ON p.plan_id = m.plan_id
GROUP BY p.plan_name;

-- 5. Latest 3 Payments
SELECT m.name, pay.amount, pay.payment_date 
FROM Payments pay
JOIN Members m ON pay.member_id = m.member_id
ORDER BY pay.payment_date DESC LIMIT 3;