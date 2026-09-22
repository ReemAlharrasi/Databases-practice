CREATE DATABASE airport;

USE airport;

CREATE TABLE AIRPORT (
    Airport_code VARCHAR(10) PRIMARY KEY,
    Name         VARCHAR(100) NOT NULL,
    City         VARCHAR(100),
    State        VARCHAR(100)
);

CREATE TABLE AIRPLANE_TYPE (
    Type_name VARCHAR(50) PRIMARY KEY,
    Company   VARCHAR(100),
    Max_seats INT
);

CREATE TABLE FLIGHT (
    Flight_number VARCHAR(20) PRIMARY KEY,
    Airline       VARCHAR(100),
    Weekdays      VARCHAR(50),
    Restrictions  VARCHAR(255)
);

CREATE TABLE CUSTOMER (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Name        VARCHAR(100) NOT NULL,
    Phone       VARCHAR(20)
);

CREATE TABLE AIRPLANE (
    Airplane_id            VARCHAR(20) PRIMARY KEY,
    Total_number_of_seats  INT,
    Type_name              VARCHAR(50),
    FOREIGN KEY (Type_name) REFERENCES AIRPLANE_TYPE(Type_name)
);

CREATE TABLE FLIGHT_LEG (
    Leg_no                  VARCHAR(20) PRIMARY KEY,
    Scheduled_dep_time      TIME,
    Scheduled_arr_time      TIME,
    Pin_code                VARCHAR(10),
    Flight_number           VARCHAR(20),
    Departure_airport_code  VARCHAR(10),
    Arrival_airport_code    VARCHAR(10),
    FOREIGN KEY (Flight_number) REFERENCES FLIGHT(Flight_number),
    FOREIGN KEY (Departure_airport_code) REFERENCES AIRPORT(Airport_code),
    FOREIGN KEY (Arrival_airport_code) REFERENCES AIRPORT(Airport_code)
);

CREATE TABLE FARE (
    Code          VARCHAR(20) PRIMARY KEY,
    Amount        DECIMAL(10,2),
    Flight_number VARCHAR(20),
    FOREIGN KEY (Flight_number) REFERENCES FLIGHT(Flight_number)
);

CREATE TABLE LEG_INSTANCE (
    Leg_no                      VARCHAR(20),
    Instance_date               DATE,
    Arrival_time                TIME,
    Departure_time              TIME,
    Number_of_available_seats   INT,
    Seat_reservations           INT,
    Airplane_id                 VARCHAR(20),
    PRIMARY KEY (Leg_no, Instance_date),
    FOREIGN KEY (Leg_no) REFERENCES FLIGHT_LEG(Leg_no),
    FOREIGN KEY (Airplane_id) REFERENCES AIRPLANE(Airplane_id)
);

CREATE TABLE CAN_LAND (
    Airport_code VARCHAR(10),
    Type_name    VARCHAR(50),
    PRIMARY KEY (Airport_code, Type_name),
    FOREIGN KEY (Airport_code) REFERENCES AIRPORT(Airport_code),
    FOREIGN KEY (Type_name) REFERENCES AIRPLANE_TYPE(Type_name)
);

CREATE TABLE RESERVATION (
    Customer_id    VARCHAR(20),
    Reservation_id VARCHAR(20),
    Leg_no         VARCHAR(20),
    Instance_date  DATE,
    PRIMARY KEY (Customer_id, Reservation_id),
    FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id),
    FOREIGN KEY (Leg_no, Instance_date) REFERENCES LEG_INSTANCE(Leg_no, Instance_date)
);
