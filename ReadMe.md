***README FILE AI GENERATED***

✈️ Airline Reservation System
📌 Project Description

The Airline Reservation System is a relational database management project developed as part of the CS306 – Database Management course at the International University of Sarajevo. The project focuses on designing and implementing a normalized relational database capable of managing airline reservation operations efficiently.

The system stores, organizes, and manages airline-related information such as flights, passengers, airports, aircraft, airlines, bookings, payments, and employee assignments. The project demonstrates practical database management concepts including normalization, SQL querying, relational database design, reporting, and data visualization.

In addition to database implementation using MySQL, the project also integrates Metabase for generating reports, analytics, and visual dashboards.

🎯 Project Objectives

The main objective of this project is to design a structured and normalized airline reservation database system that supports realistic airline operations and reporting.

The project includes:

Designing a normalized relational database schema
Managing flights, passengers, bookings, aircraft, airports, airlines, and employees
Implementing primary and foreign key relationships
Reducing redundancy through normalization
Supporting booking and payment management
Creating SQL reports and analytics
Visualizing data using Metabase dashboards
🛠️ Technologies Used
Technology	Purpose
MySQL	Relational database management system
MySQL Workbench	Database design and SQL development
Metabase	Reporting and data visualization
Visual Studio Code	Project organization and development
GitHub	Version control and repository hosting
🗂️ Database Structure

The database contains the following main tables:

airports
aircraft
airlines
passengers
employees
flights
bookings
payments
flightemployees

The flights table acts as the central entity connecting airports, airlines, aircraft, bookings, and employees.

🔗 Relationships
One-to-Many Relationships
Passengers → Bookings
Flights → Bookings
Bookings → Payments
Airlines → Flights
Airports → Flights
Many-to-Many Relationship
Flights ↔ Employees

The many-to-many relationship between flights and employees is implemented using the flightemployees junction table.

🧩 Normalization

The database design follows normalization principles to improve consistency and reduce redundancy.

The project satisfies:

First Normal Form (1NF)
Second Normal Form (2NF)
Third Normal Form (3NF)

Normalization ensures:

Atomic values
Proper dependency management
Reduced duplicate data
Improved maintainability
⚙️ Features

✅ Flight scheduling and management
✅ Passenger reservation system
✅ Airport and airline management
✅ Aircraft assignment tracking
✅ Employee flight assignments
✅ Payment and booking management
✅ Revenue analysis
✅ Flight occupancy reports
✅ Delayed flight tracking
✅ SQL analytics and reporting

📊 Reports and Visualizations

The project includes SQL queries and Metabase dashboards for generating analytical reports such as:

Passengers per flight
Revenue per airline
Delayed flights
Flight occupancy analysis
Airport activity statistics
Employee flight assignments
📁 Repository Structure
Airline-Reservation-System/
│
├── create_tables.sql
├── insert_sample_data.sql
├── queries.sql
├── README.md
├── report.pdf
├── erd_diagram.png
│
├── screenshots/
│   ├── erd.png
│   ├── metabase_reports/
│   └── mysql_queries/
🌍 Data Sources

The project uses sample and open-source aviation data inspired by the following sources:

OpenFlights Database
Kaggle Airline Dataset
📚 References
MySQL Documentation
MySQL Workbench Documentation
Metabase Documentation

Additional knowledge and guidance were obtained through CS306 course lectures, laboratory exercises, and teaching materials provided during the Database Management course.

🚧 Challenges Encountered

During development, several challenges were encountered, including:

Foreign key constraint issues
Correct insertion order of relational data
Implementation of many-to-many relationships
Metabase configuration and authentication problems
Database normalization adjustments

These issues were resolved through debugging, schema redesign, and proper relationship management.

✅ Conclusion

The Airline Reservation System project successfully demonstrates the implementation of a normalized relational database system for airline reservation management. The project combines database design principles, SQL implementation, reporting, and visualization tools to simulate realistic airline operations and analytical reporting.

The system provides practical experience in:

relational database design
normalization
SQL querying
reporting and analytics
database integration tools

and represents a complete database management project with real-world applicability.