CREATE DATABASE hospital;

USE hospital;

CREATE TABLE DEPARTMENT (
    dept_id        VARCHAR(20) PRIMARY KEY,
    dept_name      VARCHAR(100) NOT NULL,
    location       VARCHAR(100),
    Head_doctor_id VARCHAR(20)
);

CREATE TABLE DOCTOR (
    doctor_id      VARCHAR(20) PRIMARY KEY,
    status         VARCHAR(20),
    license_no     VARCHAR(50),
    full_name      VARCHAR(100) NOT NULL,
    hire_date      DATE,
    specialization VARCHAR(100),
    Department_id  VARCHAR(20),
    FOREIGN KEY (Department_id) REFERENCES DEPARTMENT(dept_id)
);

ALTER TABLE DEPARTMENT
    ADD CONSTRAINT fk_department_head_doctor
    FOREIGN KEY (Head_doctor_id) REFERENCES DOCTOR(doctor_id);

CREATE TABLE SERVICE (
    service_id    VARCHAR(20) PRIMARY KEY,
    service_name  VARCHAR(100) NOT NULL,
    service_type  VARCHAR(50),
    Department_id VARCHAR(20),
    FOREIGN KEY (Department_id) REFERENCES DEPARTMENT(dept_id)
);

CREATE TABLE SERVICE_PRICE (
    Service_id      VARCHAR(20),
    Effective_from  DATE,
    price           DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (Service_id, Effective_from),
    FOREIGN KEY (Service_id) REFERENCES SERVICE(service_id)
);

CREATE TABLE PATIENT (
    patient_id   VARCHAR(20) PRIMARY KEY,
    national_id  VARCHAR(50),
    address      VARCHAR(255),
    full_name    VARCHAR(100) NOT NULL,
    dob          DATE,
    gender       VARCHAR(10),
    blood_group  VARCHAR(5)
);

CREATE TABLE PATIENT_PHONE (
    Patient_id VARCHAR(20),
    phone      VARCHAR(20),
    PRIMARY KEY (Patient_id, phone),
    FOREIGN KEY (Patient_id) REFERENCES PATIENT(patient_id)
);

CREATE TABLE APPOINTMENT (
    appt_id    VARCHAR(20) PRIMARY KEY,
    appt_date  DATE,
    appt_type  VARCHAR(50),
    status     VARCHAR(20),
    appt_time  TIME,
    Doctor_id  VARCHAR(20),
    Patient_id VARCHAR(20),
    FOREIGN KEY (Doctor_id) REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (Patient_id) REFERENCES PATIENT(patient_id)
);

CREATE TABLE MEDICAL_RECORD (
    record_id      VARCHAR(20) PRIMARY KEY,
    diagnosis      VARCHAR(255),
    created_at     TIMESTAMP,
    treatment      VARCHAR(255),
    Appointment_id VARCHAR(20) UNIQUE,
    FOREIGN KEY (Appointment_id) REFERENCES APPOINTMENT(appt_id)
);

CREATE TABLE BILL (
    bill_id        VARCHAR(20) PRIMARY KEY,
    issue_date     DATE,
    payment_status VARCHAR(20),
    Appointment_id VARCHAR(20) UNIQUE,
    FOREIGN KEY (Appointment_id) REFERENCES APPOINTMENT(appt_id)
);

CREATE TABLE PAYMENT (
    payment_id VARCHAR(20) PRIMARY KEY,
    amount     DECIMAL(10,2) NOT NULL,
    paid_on    DATE,
    method     VARCHAR(50),
    Bill_id    VARCHAR(20),
    FOREIGN KEY (Bill_id) REFERENCES BILL(bill_id)
);

CREATE TABLE APPOINTMENT_SERVICE (
    Appointment_id      VARCHAR(20),
    Service_id          VARCHAR(20),
    quantity             INT,
    unit_price_charged   DECIMAL(10,2),
    PRIMARY KEY (Appointment_id, Service_id),
    FOREIGN KEY (Appointment_id) REFERENCES APPOINTMENT(appt_id),
    FOREIGN KEY (Service_id) REFERENCES SERVICE(service_id)
);
