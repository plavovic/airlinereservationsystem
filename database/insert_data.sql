USE AirlineReservationSystem;
-- TO USE DATABASE IF NOT USED BEFORE

-- SHOULD ADD TABLES ONE BY ONE

-- AIRPORTS


INSERT INTO Airports (AirportCode, AirportName, City, Country)
VALUES
('SJJ', 'Sarajevo International Airport', 'Sarajevo', 'Bosnia and Herzegovina'),
('ZAG', 'Zagreb Franjo Tudman Airport', 'Zagreb', 'Croatia'),
('BEG', 'Belgrade Nikola Tesla Airport', 'Belgrade', 'Serbia'),
('LJU', 'Ljubljana Joze Pucnik Airport', 'Ljubljana', 'Slovenia'),
('RJK', 'Rijeka Airport', 'Rijeka', 'Croatia'),
('TZL', 'Tuzla International Airport', 'Tuzla', 'Bosnia and Herzegovina'),
('BNX', 'Banja Luka International Airport', 'Banja Luka', 'Bosnia and Herzegovina'),
('DBV', 'Dubrovnik Airport', 'Dubrovnik', 'Croatia'),
('INI', 'Constantine the Great Airport', 'Nis', 'Serbia'),
('TGD', 'Podgorica Airport', 'Podgorica', 'Montenegro'),
('JFK', 'John F Kennedy International Airport', 'New York', 'USA'),
('LHR', 'London Heathrow Airport', 'London', 'United Kingdom'),
('CDG', 'Charles de Gaulle Airport', 'Paris', 'France'),
('FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),
('DXB', 'Dubai International Airport', 'Dubai', 'UAE');

-- AIRCRAFT

INSERT INTO Aircraft (AircraftModel, SeatCapacity, Manufacturer)
VALUES
('Boeing 737-800', 189, 'Boeing'),
('Airbus A320', 180, 'Airbus'),
('Boeing 777-300ER', 396, 'Boeing'),
('Airbus A380', 555, 'Airbus'),
('Boeing 787 Dreamliner', 330, 'Boeing'),
('Airbus A350', 350, 'Airbus'),
('Boeing 747', 467, 'Boeing'),
('Embraer E190', 114, 'Embraer'),
('Airbus A321', 220, 'Airbus'),
('Boeing 767', 269, 'Boeing');

-- AIRLINES

INSERT INTO Airlines (AirlineName, AirlineCode, Country)
VALUES
('Bosnian Wings', 'BW', 'Bosnia and Herzegovina'),
('Croatia Airlines', 'OU', 'Croatia'),
('Air Serbia', 'JU', 'Serbia'),
('Adria Balkan Air', 'AB', 'Slovenia'),
('Montenegro Airlines', 'YM', 'Montenegro'),
('Balkan Express', 'BX', 'Bosnia and Herzegovina'),
('Sky Adriatic', 'SA', 'Croatia'),
('Regional Air', 'RA', 'Serbia'),
('Fly Bosnia Connect', 'FBC', 'Bosnia and Herzegovina'),
('Euro Balkan Air', 'EBA', 'Slovenia'),
('American Airlines', 'AA', 'USA'),
('Lufthansa', 'LH', 'Germany'),
('Emirates', 'EK', 'UAE'),
('Air France', 'AF', 'France'),
('British Airways', 'BA', 'United Kingdom');

-- PASSENGERS

INSERT INTO Passengers (FirstName, LastName, Email, Phone, PassportNumber)
VALUES
('Amar', 'Hadzic', 'amar.hadzic@gmail.com', '+387-61-111-111', 'BA123456'),
('Lejla', 'Kovacevic', 'lejla.kovacevic@gmail.com', '+387-62-222-222', 'BA223344'),
('Adnan', 'Mehic', 'adnan.mehic@gmail.com', '+387-63-333-333', 'BA998877'),
('Emina', 'Begovic', 'emina.begovic@gmail.com', '+387-64-444-444', 'BA445566'),
('Tarik', 'Suljic', 'tarik.suljic@gmail.com', '+387-65-555-555', 'BA778899'),
('Marko', 'Horvat', 'marko.horvat@gmail.com', '+385-91-111-222', 'HR111222'),
('Ana', 'Novak', 'ana.novak@gmail.com', '+385-92-333-444', 'HR333444'),
('Nikola', 'Jovanovic', 'nikola.jovanovic@gmail.com', '+381-63-555-666', 'RS555666'),
('Milica', 'Petrovic', 'milica.petrovic@gmail.com', '+381-64-777-888', 'RS777888'),
('Luka', 'Kranjc', 'luka.kranjc@gmail.com', '+386-40-999-000', 'SI999000'),
('John', 'Smith', 'john.smith@gmail.com', '+1-555-1111', 'US123456'),
('Emma', 'Johnson', 'emma.johnson@gmail.com', '+44-777-2222', 'UK223344'),
('Michael', 'Brown', 'michael.brown@gmail.com', '+49-888-3333', 'DE998877'),
('Sophia', 'Davis', 'sophia.davis@gmail.com', '+33-444-5555', 'FR445566'),
('Daniel', 'Wilson', 'daniel.wilson@gmail.com', '+971-666-7777', 'AE778899');

-- EMPLOYEES

INSERT INTO Employees (FirstName, LastName, Position, Email)
VALUES
('Haris', 'Music', 'Pilot', 'haris.music@airline.com'),
('Amina', 'Delic', 'Flight Attendant', 'amina.delic@airline.com'),
('Kenan', 'Basic', 'Ground Staff', 'kenan.basic@airline.com'),
('Selma', 'Hodzic', 'Manager', 'selma.hodzic@airline.com'),
('Ivan', 'Peric', 'Pilot', 'ivan.peric@airline.com'),
('Petra', 'Maric', 'Flight Attendant', 'petra.maric@airline.com'),
('Stefan', 'Nikolic', 'Technician', 'stefan.nikolic@airline.com'),
('Jelena', 'Savic', 'Manager', 'jelena.savic@airline.com'),
('Matej', 'Zupan', 'Ground Staff', 'matej.zupan@airline.com'),
('Dino', 'Celik', 'Pilot', 'dino.celik@airline.com'),
('Robert', 'Taylor', 'Pilot', 'robert.taylor@airline.com'),
('Olivia', 'Martinez', 'Flight Attendant', 'olivia.martinez@airline.com'),
('James', 'Anderson', 'Ground Staff', 'james.anderson@airline.com'),
('Emily', 'Thomas', 'Manager', 'emily.thomas@airline.com'),
('William', 'Jackson', 'Pilot', 'william.jackson@airline.com');

-- FLIGHTS

INSERT INTO Flights( FlightNumber, DepartureAirportID, ArrivalAirportID, AircraftID, AirlineID, DepartureTime, ArrivalTime, Status, DelayMinutes )
VALUES
('BW101', 1, 2, 1, 1, '2026-05-21 08:00:00', '2026-05-21 09:00:00', 'Scheduled', 0),
('OU202', 2, 8, 2, 2, '2026-05-21 10:00:00', '2026-05-21 11:15:00', 'Scheduled', 5),
('JU303', 3, 1, 3, 3, '2026-05-22 13:30:00', '2026-05-22 14:20:00', 'Delayed', 20),
('AB404', 4, 2, 4, 4, '2026-05-22 15:00:00', '2026-05-22 16:00:00', 'Scheduled', 0),
('SA505', 5, 3, 5, 7, '2026-05-23 09:00:00', '2026-05-23 10:10:00', 'Scheduled', 0),
('BX606', 6, 1, 6, 6, '2026-05-23 18:00:00', '2026-05-23 18:50:00', 'Cancelled', 0),
('FBC707', 7, 2, 7, 9, '2026-05-24 07:00:00', '2026-05-24 08:00:00', 'Scheduled', 10),
('RA808', 8, 4, 8, 8, '2026-05-24 12:30:00', '2026-05-24 13:40:00', 'Scheduled', 0),
('JU909', 9, 3, 9, 3, '2026-05-25 14:00:00', '2026-05-25 15:15:00', 'Delayed', 35),
('YM010', 10, 1, 10, 5, '2026-05-26 19:00:00', '2026-05-26 20:00:00', 'Scheduled', 0),
('AA111', 11, 12, 1, 11, '2026-05-27 08:00:00', '2026-05-27 16:00:00', 'Scheduled', 0),
('LH222', 14, 13, 2, 12, '2026-05-28 09:00:00', '2026-05-28 10:30:00', 'Delayed', 25),
('EK333', 15, 11, 4, 13, '2026-05-29 13:00:00', '2026-05-29 22:00:00', 'Scheduled', 0),
('AF444', 13, 12, 3, 14, '2026-05-30 07:00:00', '2026-05-30 08:20:00', 'Scheduled', 5),
('BA555', 12, 15, 5, 15, '2026-05-31 18:00:00', '2026-06-01 02:00:00', 'Scheduled', 15);

-- BOOKINGS

INSERT INTO Bookings (PassengerID, FlightID, SeatNumber, SeatClass, BookingStatus)
VALUES
(1, 1, '14A', 'Economy', 'Confirmed'),
(2, 2, '7B', 'Business', 'Confirmed'),
(3, 3, '3C', 'Economy', 'Confirmed'),
(4, 4, '1A', 'First Class', 'Confirmed'),
(5, 5, '22D', 'Economy', 'Pending'),
(6, 6, '10F', 'Economy', 'Confirmed'),
(7, 7, '5A', 'Business', 'Confirmed'),
(8, 8, '2B', 'First Class', 'Confirmed'),
(9, 9, '18C', 'Economy', 'Pending'),
(10, 10, '9D', 'Business', 'Confirmed'),
(11, 11, '12A', 'Economy', 'Confirmed'),
(12, 12, '4B', 'Business', 'Confirmed'),
(13, 13, '2A', 'First Class', 'Confirmed'),
(14, 14, '15C', 'Economy', 'Confirmed'),
(15, 15, '8D', 'Business', 'Pending');

-- PAYMENTS

INSERT INTO Payments (BookingID, Amount, PaymentMethod)
VALUES
(1, 120.00, 'Credit Card'),
(2, 220.00, 'Debit Card'),
(3, 150.00, 'PayPal'),
(4, 450.00, 'Bank Transfer'),
(5, 95.00, 'Credit Card'),
(6, 130.00, 'Debit Card'),
(7, 260.00, 'Credit Card'),
(8, 500.00, 'Bank Transfer'),
(9, 140.00, 'PayPal'),
(10, 310.00, 'Credit Card'),
(11, 450.00, 'Credit Card'),
(12, 780.00, 'PayPal'),
(13, 1500.00, 'Bank Transfer'),
(14, 390.00, 'Debit Card'),
(15, 920.00, 'Credit Card');