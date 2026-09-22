USE college;


INSERT INTO DEPARTMENT (Department_id, D_name) VALUES
('D01', 'Computer Science'),
('D02', 'Electronics'),
('D03', 'Mechanical'),
('D04', 'Civil'),
('D05', 'Mathematics');


INSERT INTO PINCODE (Pin_code, City, State) VALUES
('560001', 'Bangalore', 'Karnataka'),
('400001', 'Mumbai', 'Maharashtra'),
('110001', 'Delhi', 'Delhi'),
('600001', 'Chennai', 'Tamil Nadu'),
('700001', 'Kolkata', 'West Bengal');



INSERT INTO FACULTY (F_id, Name, Mobile_no, Department_id, Salary) VALUES
('F01', 'Ramesh Iyer', '9876543210', 'D01', 85000.00),
('F02', 'Sunita Rao', '9876543211', 'D02', 78000.00),
('F03', 'Anil Kumar', '9876543212', 'D03', 72000.00),
('F04', 'Priya Menon', '9876543213', 'D04', 75000.00),
('F05', 'Deepak Sharma', '9876543214', 'D05', 68000.00);



INSERT INTO HOSTEL (Hostel_id, Hostel_name, Address, Pin_code, No_of_seats) VALUES
('H01', 'Ganga Hostel', '12 MG Road', '560001', 150),
('H02', 'Yamuna Hostel', '45 Marine Drive', '400001', 120),
('H03', 'Saraswati Hostel', '78 CP Block', '110001', 100),
('H04', 'Kaveri Hostel', '23 Anna Salai', '600001', 130),
('H05', 'Brahmaputra Hostel', '9 Park Street', '700001', 110);



INSERT INTO STUDENT (S_id, F_Name, L_Name, Phone_no, DOB, F_id, Hostel_id, Department_id) VALUES
('S01', 'Arjun', 'Verma', '9000000001', '2003-05-14', 'F01', 'H01', 'D01'),
('S02', 'Kavya', 'Nair', '9000000002', '2003-08-22', 'F02', 'H02', 'D02'),
('S03', 'Rohit', 'Singh', '9000000003', '2002-11-30', 'F03', 'H03', 'D03'),
('S04', 'Meera', 'Pillai', '9000000004', '2003-02-17', 'F04', 'H04', 'D04'),
('S05', 'Karthik', 'Reddy', '9000000005', '2002-07-09', 'F05', 'H05', 'D05');



INSERT INTO SUBJECT (Subject_id, Subject_name, F_id) VALUES
('SUB01', 'Data Structures', 'F01'),
('SUB02', 'Digital Circuits', 'F02'),
('SUB03', 'Thermodynamics', 'F03'),
('SUB04', 'Structural Analysis', 'F04'),
('SUB05', 'Linear Algebra', 'F05');



INSERT INTO COURSE (Course_id, Course_name, Duration, Department_id) VALUES
('C01', 'B.Tech Computer Science', '4 Years', 'D01'),
('C02', 'B.Tech Electronics', '4 Years', 'D02'),
('C03', 'B.Tech Mechanical', '4 Years', 'D03'),
('C04', 'B.Tech Civil', '4 Years', 'D04'),
('C05', 'B.Sc Mathematics', '3 Years', 'D05');



INSERT INTO EXAMS (Exam_code, Room, Exam_date, Exam_time, Department_id) VALUES
('E01', 'R101', '2026-11-10', '09:00:00', 'D01'),
('E02', 'R102', '2026-11-11', '09:00:00', 'D02'),
('E03', 'R103', '2026-11-12', '13:00:00', 'D03'),
('E04', 'R104', '2026-11-13', '09:00:00', 'D04'),
('E05', 'R105', '2026-11-14', '13:00:00', 'D05');



INSERT INTO TAKE (Subject_id, S_id) VALUES
('SUB01', 'S01'),
('SUB02', 'S02'),
('SUB03', 'S03'),
('SUB04', 'S04'),
('SUB05', 'S05');



INSERT INTO ENROLL_COURSE (Course_id, S_id) VALUES
('C01', 'S01'),
('C02', 'S02'),
('C03', 'S03'),
('C04', 'S04'),
('C05', 'S05');



INSERT INTO ENROLL_EXAM (Exam_code, S_id) VALUES
('E01', 'S01'),
('E02', 'S02'),
('E03', 'S03'),
('E04', 'S04'),
('E05', 'S05');
