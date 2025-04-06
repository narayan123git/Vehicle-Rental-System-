DELIMITER //
CREATE PROCEDURE GetAvailableVehicles()
BEGIN
    SELECT * FROM Vehicles WHERE AvailabilityStatus = 'Available';
END;
//

CREATE PROCEDURE GetRentalsByCustomer(IN cid INT)
BEGIN
    SELECT * FROM Rentals WHERE CustomerID = cid;
END;
//

CREATE PROCEDURE TotalRevenue()
BEGIN
    SELECT SUM(TotalCost) AS TotalRevenue FROM Rentals;
END;
//

CREATE PROCEDURE CustomersWithManyBookings()
BEGIN
    SELECT CustomerID, COUNT(*) AS TotalBookings
    FROM Rentals
    GROUP BY CustomerID
    HAVING COUNT(*) > 3;
END;
//

CREATE PROCEDURE SetVehicleUnavailable(IN vid INT)
BEGIN
    UPDATE Vehicles SET AvailabilityStatus = 'Not Available' WHERE VehicleID = vid;
END;
//

CREATE PROCEDURE RecentRentals()
BEGIN
    SELECT * FROM Rentals
    WHERE RentDate >= CURDATE() - INTERVAL 30 DAY;
END;
//

CREATE PROCEDURE DeleteOldRentals()
BEGIN
    DELETE FROM Rentals WHERE RentDate < CURDATE() - INTERVAL 1 YEAR;
END;
//

CREATE PROCEDURE MostRentedVehicles()
BEGIN
    SELECT VehicleID, COUNT(*) AS TimesRented
    FROM Rentals
    GROUP BY VehicleID
    ORDER BY TimesRented DESC;
END;
//

CREATE PROCEDURE TripLengths()
BEGIN
    SELECT CustomerID, DATEDIFF(ReturnDate, RentDate) AS TripLength
    FROM Rentals
    ORDER BY TripLength DESC;
END;
//

CREATE PROCEDURE VehicleEarnings()
BEGIN
    SELECT v.VehicleID, v.Model, SUM(r.TotalCost) AS TotalEarnings
    FROM Vehicles v
    JOIN Rentals r ON v.VehicleID = r.VehicleID
    GROUP BY v.VehicleID, v.Model
    ORDER BY TotalEarnings DESC;
END;
//
DELIMITER ;
