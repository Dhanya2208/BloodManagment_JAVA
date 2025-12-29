🩸 Blood Donor Management System
📌 Project Description

The Blood Donor Management System is a Java Swing–based desktop application designed to manage blood donors and hospital blood availability efficiently.
It allows users to register donors, view donor details, search donors by address, and manage hospital blood stock (register and update blood availability).

This project uses Java Swing for GUI and MySQL database for data storage.

🎯 Objectives

To maintain donor information digitally

To track blood availability across hospitals

To simplify searching donors and hospitals

To reduce manual record-keeping errors

🛠️ Technologies Used

Programming Language: Java

GUI: Java Swing (JFrame, JPanel, JTable, CardLayout)

Database: MySQL

Connectivity: JDBC

IDE: Eclipse / IntelliJ / NetBeans

📂 Project Features
👤 Donor Management

Add new donor details

View all donor records

Search donors by address

Store donor data in MySQL database

🏥 Hospital & Blood Availability

Register new hospitals

Update blood units for each blood group

View available blood stock

Search hospital by name

🖥️ User Interface

Welcome page

Home dashboard

Add Donor page

Donor Details page

Blood Availability page

Easy navigation using CardLayout

🗄️ Database Structure
Donors Table
CREATE TABLE donors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    weight INT,
    blood_group VARCHAR(10),
    phone VARCHAR(15),
    address VARCHAR(255)
);

Hospitals Table
CREATE TABLE hospitals (
    hospital_name VARCHAR(100) PRIMARY KEY,
    o_positive INT,
    o_negative INT,
    a_positive INT,
    a_negative INT,
    b_positive INT,
    b_negative INT,
    ab_positive INT,
    ab_negative INT
);

🔗 Database Connection

Make sure you have a DatabaseConnection.java file with proper JDBC connection settings.

Example:

public class DatabaseConnection {
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/blood_db",
            "root",
            "password"
        );
    }
}

▶️ How to Run the Project

Install Java (JDK 8 or above)

Set up MySQL and create required tables

Update database credentials in DatabaseConnection.java

Open project in IDE

Run BloodDonorManagementSystem.java

📸 Screens Included

Welcome Screen

Home Dashboard

Add Donor Form

Donor Details Table

Blood Availability Table****
