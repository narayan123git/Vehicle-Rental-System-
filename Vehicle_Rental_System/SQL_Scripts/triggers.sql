DELIMITER //
CREATE TRIGGER UpdateAvailabilityAfterRental
AFTER INSERT ON Rentals
FOR EACH ROW
BEGIN
    UPDATE Vehicles
    SET AvailabilityStatus = 'Not Available'
    WHERE VehicleID = NEW.VehicleID;
END;
//

CREATE TRIGGER UpdateAvailabilityOnReturn
AFTER UPDATE ON Rentals
FOR EACH ROW
BEGIN
    IF NEW.ReturnDate IS NOT NULL THEN
        UPDATE Vehicles
        SET AvailabilityStatus = 'Available'
        WHERE VehicleID = NEW.VehicleID;
    END IF;
END;
//

DELIMITER ;
