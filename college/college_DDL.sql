CREATE DATABASE college;

USE college;

CREATE TABLE DEPARTMENT (
    Department_id VARCHAR(20) PRIMARY KEY,
    D_name        VARCHAR(100) NOT NULL
);

CREATE TABLE PINCODE (
    Pin_code VARCHAR(10) PRIMARY KEY,
    City     VARCHAR(100) NOT NULL,
    State    VARCHAR(100) NOT NULL
);

CREATE TABLE FACULTY (
    F_id          VARCHAR(20) PRIMARY KEY,
    Name          VARCHAR(100) NOT NULL,
    Mobile_no     VARCHAR(20),
    Department_id VARCHAR(20),
    Salary        DECIMAL(10,2),
    FOREIGN KEY (Department_id) REFERENCES DEPARTMENT(Department_id)
);

CREATE TABLE HOSTEL (
    Hostel_id   VARCHAR(20) PRIMARY KEY,
    Hostel_name VARCHAR(100) NOT NULL,
    Address     VARCHAR(255),
    Pin_code    VARCHAR(10),
    No_of_seats INT,
    FOREIGN KEY (Pin_code) REFERENCES PINCODE(Pin_code)
);

CREATE TABLE STUDENT (
    S_id          VARCHAR(20) PRIMARY KEY,
    F_Name        VARCHAR(100) NOT NULL,
    L_Name        VARCHAR(100),
    Phone_no      VARCHAR(20),
    DOB           DATE,
    F_id          VARCHAR(20),
    Hostel_id     VARCHAR(20),
    Department_id VARCHAR(20),
    FOREIGN KEY (F_id) REFERENCES FACULTY(F_id),
    FOREIGN KEY (Hostel_id) REFERENCES HOSTEL(Hostel_id),
    FOREIGN KEY (Department_id) REFERENCES DEPARTMENT(Department_id)
);

CREATE TABLE SUBJECT (
    Subject_id   VARCHAR(20) PRIMARY KEY,
    Subject_name VARCHAR(100) NOT NULL,
    F_id         VARCHAR(20),
    FOREIGN KEY (F_id) REFERENCES FACULTY(F_id)
);

CREATE TABLE COURSE (
    Course_id     VARCHAR(20) PRIMARY KEY,
    Course_name   VARCHAR(100) NOT NULL,
    Duration      VARCHAR(50),
    Department_id VARCHAR(20),
    FOREIGN KEY (Department_id) REFERENCES DEPARTMENT(Department_id)
);


CREATE TABLE EXAMS (
    Exam_code     VARCHAR(20) PRIMARY KEY,
    Room          VARCHAR(20),
    Exam_date     DATE,
    Exam_time     TIME,
    Department_id VARCHAR(20),
    FOREIGN KEY (Department_id) REFERENCES DEPARTMENT(Department_id)
);

CREATE TABLE TAKE (
    Subject_id VARCHAR(20),
    S_id       VARCHAR(20),
    PRIMARY KEY (Subject_id, S_id),
    FOREIGN KEY (Subject_id) REFERENCES SUBJECT(Subject_id),
    FOREIGN KEY (S_id) REFERENCES STUDENT(S_id)
);

CREATE TABLE ENROLL_COURSE (
    Course_id VARCHAR(20),
    S_id      VARCHAR(20),
    PRIMARY KEY (Course_id, S_id),
    FOREIGN KEY (Course_id) REFERENCES COURSE(Course_id),
    FOREIGN KEY (S_id) REFERENCES STUDENT(S_id)
);

CREATE TABLE ENROLL_EXAM (
    Exam_code VARCHAR(20),
    S_id      VARCHAR(20),
    PRIMARY KEY (Exam_code, S_id),
    FOREIGN KEY (Exam_code) REFERENCES EXAMS(Exam_code),
    FOREIGN KEY (S_id) REFERENCES STUDENT(S_id)
);
