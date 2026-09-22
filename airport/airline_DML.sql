USE airport;

INSERT INTO AIRPORT (Airport_code, Name, City, State) VALUES
('BLR', 'Kempegowda International Airport', 'Bangalore', 'Karnataka'),
('BOM', 'Chhatrapati Shivaji International Airport', 'Mumbai', 'Maharashtra'),
('DEL', 'Indira Gandhi International Airport', 'Delhi', 'Delhi'),
('MAA', 'Chennai International Airport', 'Chennai', 'Tamil Nadu'),
('CCU', 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'West Bengal');


INSERT INTO AIRPLANE_TYPE (Type_name, Company, Max_seats) VALUES
('A320', 'Airbus', 180),
('A321', 'Airbus', 220),
('B737', 'Boeing', 189),
('B777', 'Boeing', 396),
('ATR72', 'ATR', 78);


INSERT INTO FLIGHT (Flight_number, Airline, Weekdays, Restrictions) VALUES
('FL101', 'IndiGo', 'Mon,Wed,Fri', 'No restrictions'),
('FL102', 'Air India', 'Daily', 'No restrictions'),
('FL103', 'SpiceJet', 'Tue,Thu,Sat', 'No cargo'),
('FL104', 'Vistara', 'Daily', 'No restrictions'),
('FL105', 'GoAir', 'Mon,Tue,Wed,Thu,Fri', 'No pets');



INSERT INTO CUSTOMER (Customer_id, Name, Phone) VALUES
('CU01', 'Ravi Kumar', '9811111111'),
('CU02', 'Simran Kaur', '9822222222'),
('CU03', 'Faisal Ahmed', '9833333333'),
('CU04', 'Lakshmi Narayan', '9844444444'),
('CU05', 'Ojas Patel', '9855555555');



INSERT INTO AIRPLANE (Airplane_id, Total_number_of_seats, Type_name) VALUES
('AC01', 180, 'A320'),
('AC02', 220, 'A321'),
('AC03', 189, 'B737'),
('AC04', 396, 'B777'),
('AC05', 78, 'ATR72');



INSERT INTO FLIGHT_LEG (Leg_no, Scheduled_dep_time, Scheduled_arr_time, Pin_code, Flight_number, Departure_airport_code, Arrival_airport_code) VALUES
('LEG01', '06:00:00', '08:00:00', '560001', 'FL101', 'BLR', 'BOM'),
('LEG02', '09:30:00', '11:45:00', '400001', 'FL102', 'BOM', 'DEL'),
('LEG03', '13:00:00', '15:15:00', '110001', 'FL103', 'DEL', 'MAA'),
('LEG04', '16:00:00', '18:30:00', '600001', 'FL104', 'MAA', 'CCU'),
('LEG05', '19:00:00', '20:30:00', '700001', 'FL105', 'CCU', 'BLR');


INSERT INTO FARE (Code, Amount, Flight_number) VALUES
('FR01', 4500.00, 'FL101'),
('FR02', 5200.00, 'FL102'),
('FR03', 3900.00, 'FL103'),
('FR04', 6100.00, 'FL104'),
('FR05', 3300.00, 'FL105');


INSERT INTO LEG_INSTANCE (Leg_no, Instance_date, Arrival_time, Departure_time, Number_of_available_seats, Seat_reservations, Airplane_id) VALUES
('LEG01', '2026-10-01', '08:05:00', '06:05:00', 150, 30, 'AC01'),
('LEG02', '2026-10-01', '11:50:00', '09:35:00', 200, 20, 'AC02'),
('LEG03', '2026-10-02', '15:20:00', '13:05:00', 160, 29, 'AC03'),
('LEG04', '2026-10-02', '18:35:00', '16:05:00', 350, 46, 'AC04'),
('LEG05', '2026-10-03', '20:35:00', '19:05:00', 60, 18, 'AC05');



INSERT INTO CAN_LAND (Airport_code, Type_name) VALUES
('BLR', 'A320'),
('BOM', 'A321'),
('DEL', 'B737'),
('MAA', 'B777'),
('CCU', 'ATR72');


INSERT INTO RESERVATION (Customer_id, Reservation_id, Leg_no, Instance_date) VALUES
('CU01', 'RS01', 'LEG01', '2026-10-01'),
('CU02', 'RS01', 'LEG02', '2026-10-01'),
('CU03', 'RS01', 'LEG03', '2026-10-02'),
('CU04', 'RS01', 'LEG04', '2026-10-02'),
('CU05', 'RS01', 'LEG05', '2026-10-03');
