# Vehicle Rental System

## Project Details
- **Group:** 8
- **Roll Numbers:** 36-40
- **Problem Statement:** Develop a database for a Vehicle Rental System

## About the Project
We created this database system to help rental systems keep track of their vehicles, customers, and rental transactions. Our system makes it easy to see which cars are available, track customer history, and analyze rental patterns.

## Virtual Database
For this project, we set up a virtual database using MySQL Command Line Client. We chose this approach because:

- It gave us a safe environment to test all our SQL queries without any risk
- We could easily reset the database when needed during development
- Everyone in our group could work with the same database structure
- It's perfect for demonstrating how the system works during evaluation

The MySQL Command Line Client let us directly execute our queries and see results immediately, which made development and testing much faster.

## Our Database Structure

We kept the database simple with three main tables:

1. **Vehicles**
   - VehicleID (Primary Key)
   - Model
   - Type
   - PricePerDay
   - AvailabilityStatus

2. **Customers**
   - CustomerID (Primary Key)
   - Name
   - Contact
   - LicenseNumber

3. **Rentals**
   - RentalID (Primary Key)
   - CustomerID (Foreign Key)
   - VehicleID (Foreign Key)
   - RentDate
   - ReturnDate
   - TotalCost

## How We Organized Everything

```
Vehicle_Rental_System/
├── SQL_Scripts/
│   ├── create_tables.sql    # Creates the database structure
│   ├── insert_data.sql      # Adds sample data
│   └── queries.sql          # Contains all our required queries
├── Reports/
│   └── Vehicle_Rental_System_Report.docx
├── GitHub_Repo/
│   └── (All our SQL scripts)
├── Screenshots/
│   ├── (Image file of the output of each queries)
└── README.md
```

## Getting Started

If you want to test our system:

```
# Open MySQL Command Line Client
mysql -u username -p

# Set up the database
CREATE DATABASE vehicle_rental;
USE vehicle_rental;

# Run our scripts
source SQL_Scripts/create_tables.sql
source SQL_Scripts/insert_data.sql
source SQL_Scripts/queries.sql
```

## Key Features (Implemented as Queries)

We implemented all these features as SQL queries:

## Note
This is our submission for the DBMS course project. We've implemented everything using MySQL Command Line Client as our virtual database environment.
