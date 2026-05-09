--All flights and Airports

SELECT flights.FlightNumber, dep.AirportName AS DepartureAirport, arr.AirportName AS ArrivalAirport, flights.DepartureTime, flights.ArrivalTime
FROM flights
JOIN airports dep
ON flights.DepartureAirportID = dep.AirportID
JOIN airports arr
ON flights.ArrivalAirportID = arr.AirportID;