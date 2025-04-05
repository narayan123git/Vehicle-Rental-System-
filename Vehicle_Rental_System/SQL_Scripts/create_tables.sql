CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY,
    Model VARCHAR(50) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    PricePerDay DECIMAL(10,2) NOT NULL,
    AvailabilityStatus VARCHAR(20) NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(50),
    LicenseNumber VARCHAR(50)
);

CREATE TABLE Rentals (
    RentalID INT PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    RentDate DATE,
    ReturnDate DATE,
    TotalCost DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);
