--passengers per flight

SELECT flights.FlightNumber, COUNT(bookings.BookingID) AS PassengerCount
FROM flights
LEFT JOIN bookings
ON flights.FlightID = bookings.FlightID
GROUP BY flights.FlightNumber;