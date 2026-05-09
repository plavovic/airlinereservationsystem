--Revenue Per Airline

SELECT 
    Airlines.AirlineName,
    SUM(Payments.Amount) AS TotalRevenue
FROM Payments
JOIN Bookings
ON Payments.BookingID = Bookings.BookingID
JOIN Flights
ON Bookings.FlightID = Flights.FlightID
JOIN Airlines
ON Flights.AirlineID = Airlines.AirlineID
GROUP BY Airlines.AirlineName;