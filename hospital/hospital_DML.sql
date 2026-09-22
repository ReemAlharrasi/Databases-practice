USE hospital;

INSERT INTO DEPARTMENT (dept_id, dept_name, location, Head_doctor_id) VALUES
('DP01', 'Cardiology', 'Block A, Floor 2', NULL),
('DP02', 'Orthopedics', 'Block B, Floor 1', NULL),
('DP03', 'Pediatrics', 'Block A, Floor 3', NULL),
('DP04', 'Neurology', 'Block C, Floor 2', NULL),
('DP05', 'General Medicine', 'Block A, Floor 1', NULL);


INSERT INTO DOCTOR (doctor_id, status, license_no, full_name, hire_date, specialization, Department_id) VALUES
('DR01', 'Active', 'LIC10001', 'Dr. Anjali Mehta', '2015-06-01', 'Cardiologist', 'DP01'),
('DR02', 'Active', 'LIC10002', 'Dr. Vikram Shah', '2017-03-14', 'Orthopedic Surgeon', 'DP02'),
('DR03', 'Active', 'LIC10003', 'Dr. Neha Kapoor', '2018-09-22', 'Pediatrician', 'DP03'),
('DR04', 'Active', 'LIC10004', 'Dr. Sameer Joshi', '2012-01-10', 'Neurologist', 'DP04'),
('DR05', 'Active', 'LIC10005', 'Dr. Ritu Desai', '2019-11-05', 'General Physician', 'DP05');


UPDATE DEPARTMENT SET Head_doctor_id = 'DR01' WHERE dept_id = 'DP01';
UPDATE DEPARTMENT SET Head_doctor_id = 'DR02' WHERE dept_id = 'DP02';
UPDATE DEPARTMENT SET Head_doctor_id = 'DR03' WHERE dept_id = 'DP03';
UPDATE DEPARTMENT SET Head_doctor_id = 'DR04' WHERE dept_id = 'DP04';
UPDATE DEPARTMENT SET Head_doctor_id = 'DR05' WHERE dept_id = 'DP05';


INSERT INTO SERVICE (service_id, service_name, service_type, Department_id) VALUES
('SV01', 'ECG', 'Diagnostic', 'DP01'),
('SV02', 'Knee X-Ray', 'Diagnostic', 'DP02'),
('SV03', 'Child Vaccination', 'Preventive', 'DP03'),
('SV04', 'MRI Brain Scan', 'Diagnostic', 'DP04'),
('SV05', 'General Consultation', 'Consultation', 'DP05');


INSERT INTO SERVICE_PRICE (Service_id, Effective_from, price) VALUES
('SV01', '2026-01-01', 1500.00),
('SV02', '2026-01-01', 1200.00),
('SV03', '2026-01-01', 800.00),
('SV04', '2026-01-01', 6500.00),
('SV05', '2026-01-01', 500.00);


INSERT INTO PATIENT (patient_id, national_id, address, full_name, dob, gender, blood_group) VALUES
('P01', 'NID50001', '14 Lake View, Bangalore', 'Rahul Gupta', '1990-04-12', 'Male', 'O+'),
('P02', 'NID50002', '22 Hill Road, Mumbai', 'Sneha Kulkarni', '1985-09-25', 'Female', 'A+'),
('P03', 'NID50003', '7 Green Park, Delhi', 'Amit Bansal', '1978-12-03', 'Male', 'B+'),
('P04', 'NID50004', '31 Rose Garden, Chennai', 'Divya Suresh', '1995-06-18', 'Female', 'AB+'),
('P05', 'NID50005', '5 Palm Street, Kolkata', 'Manoj Tiwari', '2000-02-27', 'Male', 'O-');


INSERT INTO PATIENT_PHONE (Patient_id, phone) VALUES
('P01', '9111111111'),
('P02', '9222222222'),
('P03', '9333333333'),
('P04', '9444444444'),
('P05', '9555555555');


INSERT INTO APPOINTMENT (appt_id, appt_date, appt_type, status, appt_time, Doctor_id, Patient_id) VALUES
('AP01', '2026-09-01', 'Consultation', 'Completed', '10:00:00', 'DR01', 'P01'),
('AP02', '2026-09-03', 'Follow-up', 'Completed', '11:30:00', 'DR02', 'P02'),
('AP03', '2026-09-05', 'Consultation', 'Completed', '09:15:00', 'DR03', 'P03'),
('AP04', '2026-09-10', 'Diagnostic', 'Scheduled', '14:00:00', 'DR04', 'P04'),
('AP05', '2026-09-12', 'Consultation', 'Scheduled', '16:45:00', 'DR05', 'P05');


INSERT INTO MEDICAL_RECORD (record_id, diagnosis, created_at, treatment, Appointment_id) VALUES
('MR01', 'Mild Arrhythmia', '2026-09-01 10:30:00', 'Prescribed beta blockers', 'AP01'),
('MR02', 'Knee Ligament Strain', '2026-09-03 12:00:00', 'Physiotherapy recommended', 'AP02'),
('MR03', 'Common Cold', '2026-09-05 09:45:00', 'Prescribed antihistamines', 'AP03'),
('MR04', 'Suspected Migraine', '2026-09-10 14:30:00', 'MRI scheduled for review', 'AP04'),
('MR05', 'Routine Checkup', '2026-09-12 17:15:00', 'No treatment required', 'AP05');


INSERT INTO BILL (bill_id, issue_date, payment_status, Appointment_id) VALUES
('B01', '2026-09-01', 'Paid', 'AP01'),
('B02', '2026-09-03', 'Paid', 'AP02'),
('B03', '2026-09-05', 'Paid', 'AP03'),
('B04', '2026-09-10', 'Pending', 'AP04'),
('B05', '2026-09-12', 'Pending', 'AP05');


INSERT INTO PAYMENT (payment_id, amount, paid_on, method, Bill_id) VALUES
('PM01', 1500.00, '2026-09-01', 'Card', 'B01'),
('PM02', 1200.00, '2026-09-03', 'Cash', 'B02'),
('PM03', 800.00, '2026-09-05', 'UPI', 'B03'),
('PM04', 6500.00, '2026-09-10', 'Insurance', 'B04'),
('PM05', 500.00, '2026-09-12', 'Card', 'B05');


INSERT INTO APPOINTMENT_SERVICE (Appointment_id, Service_id, quantity, unit_price_charged) VALUES
('AP01', 'SV01', 1, 1500.00),
('AP02', 'SV02', 1, 1200.00),
('AP03', 'SV03', 1, 800.00),
('AP04', 'SV04', 1, 6500.00),
('AP05', 'SV05', 1, 500.00);
