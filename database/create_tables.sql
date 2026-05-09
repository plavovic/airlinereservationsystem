CREATE TABLE Airports (
    AirportID INT PRIMARY KEY AUTO_INCREMENT,
    AirportCode VARCHAR(10) NOT NULL UNIQUE,
    AirportName VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Aircraft (
    AircraftID INT PRIMARY KEY AUTO_INCREMENT,
    AircraftModel VARCHAR(100) NOT NULL,
    SeatCapacity INT NOT NULL,
    Manufacturer VARCHAR(100)
);

CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY AUTO_INCREMENT,
    AirlineName VARCHAR(100) NOT NULL,
    AirlineCode VARCHAR(10) UNIQUE,
    Country VARCHAR(50)
);

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(30),
    PassportNumber VARCHAR(50) UNIQUE
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    FlightNumber VARCHAR(20) NOT NULL UNIQUE,
    DepartureAirportID INT NOT NULL,
    ArrivalAirportID INT NOT NULL,
    AircraftID INT NOT NULL,
    AirlineID INT NOT NULL,
    DepartureTime DATETIME NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    Status VARCHAR(30) DEFAULT 'Scheduled',
    DelayMinutes INT DEFAULT 0,

    FOREIGN KEY (DepartureAirportID)
        REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID)
        REFERENCES Airports(AirportID),
    FOREIGN KEY (AircraftID)
        REFERENCES Aircraft(AircraftID),
    FOREIGN KEY (AirlineID)
        REFERENCES Airlines(AirlineID),

    CHECK (DepartureAirportID <> ArrivalAirportID),
    CHECK (ArrivalTime > DepartureTime)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT NOT NULL,
    FlightID INT NOT NULL,
    BookingDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    SeatNumber VARCHAR(10),
    SeatClass VARCHAR(20) DEFAULT 'Economy',
    BookingStatus VARCHAR(30) DEFAULT 'Confirmed',

    FOREIGN KEY (PassengerID)
        REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID)
        REFERENCES Flights(FlightID)
        ON DELETE CASCADE,

    UNIQUE (FlightID, SeatNumber)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    PaymentMethod VARCHAR(30),

    FOREIGN KEY (BookingID)
        REFERENCES Bookings(BookingID)
        ON DELETE CASCADE
);