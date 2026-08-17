# Gym Management System - SQL Project

## Project Description
This is a Gym Management Database created using MySQL. 
The purpose of this project is to manage gym members, trainers, membership plans, and payment records.

## Database Tables
1. **Members** - Stores member details. Linked to Trainer and Plan using Foreign Keys.
2. **Trainers** - Stores trainer name and specialization.
3. **Membership_Plan** - Stores plan details like name, duration and price.
4. **Payments** - Stores payment records of members.

## Key Features
- Relationship between Members, Trainers and Plans using Foreign Keys
- Multiple membership plans: Monthly, Quarterly, Yearly
- Payment tracking system
- SQL queries to generate reports

## SQL Concepts Used
- `SELECT` - To retrieve data
- `JOIN` - To combine data from multiple tables
- `SUM` - To calculate total revenue
- `GROUP BY` - To count members in each plan
- `ORDER BY` - To get latest payments

## How to Run
1. Open MySQL Workbench
2. Run the `gym_management.sql` file
3. Database `GymDB` will be created with sample data
4. Execute the queries to see reports

## Tech Stack
- **Database**: MySQL
- **Tool**: MySQL Workbench