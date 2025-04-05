INSERT INTO Vehicles (VehicleID, Model, Type, PricePerDay, AvailabilityStatus) VALUES
(1, 'Tata Nexon', 'SUV', 2500.00, 'Available'),
(2, 'Maruti Swift', 'Comfort', 1200.00, 'Available'),
(3, 'Hyundai Verna', 'Coupe', 1800.00, 'Available'),
(4, 'Mahindra Thar', 'Off-Road', 3500.00, 'Available'),
(5, 'Tata Motors', 'MPV', 3000.00, 'Available'),
(6, 'Tata Altroz', 'SUV', 2200.00, 'Not Available'),
(7, 'Honda City', 'Coupe', 2000.00, 'Available'),
(8, 'Maruti Ertiga', 'MPV', 1600.00, 'Available'),
(9, 'MG Hector', 'SUV', 2800.00, 'Not Available'),
(10, 'Hyundai i20', 'Comfort', 1400.00, 'Available');

INSERT INTO Customers (CustomerID, Name, Contact, LicenseNumber) VALUES
(101, 'Rajesh Kumar', '8765432109', 'DL-0420110034567'),
(202, 'Priya Sharma', '9876543210', 'MH-0320150076543'),
(303, 'Vikram Singh', '7654321098', 'KA-0720180089012'),
(404, 'Ananya Patel', '9988776655', 'GJ-0520190123456'),
(505, 'Suresh Reddy', '8877665544', 'AP-0620170045678'),
(606, 'Meena Verma', '9871234769', 'UP-0920160056789'),
(707, 'Arjun Kapoor', '7766554433', 'PB-0320130067890'),
(808, 'Deepika Malhotra', '9900112233', 'HR-0820140078901'),
(909, 'Rahul Gupta', '8612908747', 'TN-0220180089012'),
(1010, 'Nisha Joshi', '8899001122', 'MP-1020170090123');

INSERT INTO Rentals (RentalID, CustomerID, VehicleID, RentDate, ReturnDate, TotalCost) VALUES
(1001, 101, 1, '2025-03-01', '2025-03-05', 10000.00),
(2002, 202, 2, '2023-03-10', '2024-03-12', 2400.00),
(3003, 303, 3, '2020-03-15', '2021-03-18', 5400.00),
(4004, 404, 3, '2021-03-20', '2024-03-25', 15000.00),
(5005, 505, 4, '2022-04-01', '2025-04-03', 7000.00),
(6006, 606, 7, '2022-04-05', '2023-04-10', 10000.00),
(7007, 707, 8, '2020-04-12', '2025-04-14', 3200.00),
(7256, 101, 8, '2022-04-12', '2024-04-14', 3300.00),
(8008, 808, 10, '2021-04-18', '2023-04-22', 5600.00),
(7258, 101, 9, '2022-04-12', '2023-04-14', 3300.00),
(7265, 101, 6, '2020-04-12', '2024-04-14', 3300.00),
(9009, 909, 1, '2021-05-01', '2025-05-05', 10000.00),
(10010, 1010, 3, '2025-04-01', '2025-04-03', 3600.00);