--Delayed Flights

SELECT FlightNumber, DelayMinutes
FROM Flights
WHERE DelayMinutes > 0;