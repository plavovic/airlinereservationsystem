
--PASSENGERS PER FLIGHT

SELECT Flights.FlightNumber, COUNT(Bookings.BookingID) AS PassengerCount FROM Flights LEFT JOIN Bookings ON Flights.FlightID = Bookings.FlightID
GROUP BY Flights.FlightNumber;