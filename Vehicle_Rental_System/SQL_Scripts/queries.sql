SELECT * FROM Vehicles
WHERE AvailabilityStatus = 'Available';

SELECT * FROM Rentals
WHERE CustomerID = 101;

SELECT SUM(TotalCost) AS TotalRevenue FROM Rentals;

SELECT CustomerID, COUNT(*) AS TotalBookings
FROM Rentals
GROUP BY CustomerID
HAVING COUNT(*) > 3;

UPDATE Vehicles
SET AvailabilityStatus = 'Not Available'
WHERE VehicleID = 2;
SELECT * FROM Vehicles;

SELECT * FROM Rentals
WHERE RentDate >= CURDATE() - INTERVAL 30 DAY;

DELETE FROM Rentals
WHERE RentDate < CURDATE() - INTERVAL 1 YEAR;
SELECT * FROM Rentals;

SELECT VehicleID, COUNT(*) AS TimesRented
FROM Rentals
GROUP BY VehicleID
ORDER BY TimesRented DESC;

SELECT CustomerID, DATEDIFF(ReturnDate, RentDate) AS TripLength
FROM Rentals
ORDER BY TripLength DESC;

SELECT v.VehicleID, v.Model, SUM(r.TotalCost) AS TotalEarnings
FROM Vehicles v
JOIN Rentals r ON v.VehicleID = r.VehicleID
GROUP BY v.VehicleID, v.Model
ORDER BY TotalEarnings DESC;