USE company;

------------------------ TASK 1: INSERT ------------------------

INSERT INTO DEPARTMENT (D_NO, DName , ManagerID , hiredate) VALUES 
( '1','Headquarters', NULL, NULL),
( '2','Marketing', NULL, NULL),
( '3','Finance', NULL, NULL),
( '4','Administration', NULL, NULL),
( '5','Research', NULL, NULL);

INSERT INTO DEPT_LOCATIONS (DNum,Location) Values
('1','Muscat'),
('2','Dubai'),
('3','Riyadh'),
('4','Manama'),
('5','Doha');



INSERT INTO EMPLOYEE (SSN, FName, LName, Gn, BD, DNum, SupervisorID, Salary, Address) Values
('888665555', 'James', 'Borg', 'M','1937-11-10', '1', NULL , 55000, '450 Stone, Houston TX');


INSERT INTO EMPLOYEE (SSN, FName, LName, Gn, BD, DNum, SupervisorID, Salary, Address) Values
('333445555', 'Franklin', 'Wong', 'M','1955-12-08', '5', 888665555,40000, '638 Voss, Houston TX'),
('987654321', 'Jennifer', 'Wallace', 'F','1941-06-20', '4', 888665555,43000, '291 Berry, Bellaire TX');


INSERT INTO EMPLOYEE (SSN, FName, LName, Gn, BD, DNum, SupervisorID, Salary, Address) Values
('123456789', 'John', 'Smith', 'M','1965-01-09', '5', 333445555,30000, '731 Fondren, Houston TX'),
('999887777', 'Alicia', 'Zelaya', 'F','1968-07-19', '5', 987654321,25000, '3321 Castle, Spring TX');

UPDATE DEPARTMENT
SET ManagerID ='888665555',
hiredate='1981-06-19'
WHERE D_NO=1;


UPDATE DEPARTMENT
SET ManagerID ='987654321',
hiredate='1998-01-01'
WHERE D_NO=2;


UPDATE DEPARTMENT
SET ManagerID ='999887777',
hiredate='2005-03-15'
WHERE D_NO=3;


UPDATE DEPARTMENT
SET ManagerID ='987654321',
hiredate='1995-01-01'
WHERE D_NO=4;


UPDATE DEPARTMENT
SET ManagerID ='333445555',
hiredate='1988-05-22'
WHERE D_NO=5;

INSERT INTO PROJECT (PNum,Pname,Location,DNum) VALUES
('1', 'ProductX', 'Muscat', '5'),
('2', 'ProductY', 'Dubai', '5'),
('3', 'ProductZ', 'Riyadh', '5'),
('10', 'Computerization', 'Manama', '4'),
('20', 'Reorganization', 'Doha', '1');


INSERT INTO WORKS_ON (PNum, EmployeeID,WorkingHours) VALUES
('1', '123456789', 32.5),
('2', '123456789', 7.5),
('2', '333445555', 10.0),
('3', '333445555', 10.0),
('10', '999887777', 10.0);


INSERT INTO DEPENDENT (SSN,DName,Gn,BD,RELATIONSHIP) VALUES
('333445555','Alice', 'F', '1986-04-05','Daughter'),
('333445555','Theodore', 'M', '1983-10-25','Son'),
('333445555','Joy', 'F', '1958-05-03','Spouse'),
('987654321','Abner', 'M', '1942-02-28','Spouse'),
('123456789','Michael', 'M', '1988-01-04','Son');


------------------------ TASK 2: UPDATE ------------------------
-- 1. Increase the salary of employees in department 5 by 10%
UPDATE EMPLOYEE
SET Salary = Salary*1.1
WHERE DNum ='5';

-- 2. Change the location of project 2 from Dubai to Muscat
UPDATE PROJECT
SET Location = 'MUSCAT'
WHERE PNum = 2;

-- 3. Change the salary of employee 123456789 to 35000
UPDATE EMPLOYEE
SET Salary = 35000
WHERE SSN = '123456789' ;

-- 4. Change the department name of department 3 from Finance to Financial Management
UPDATE DEPARTMENT
SET DName = 'Financial Management'
WHERE D_NO = '3';

------------------------ TASK 3: DELETE ------------------------
-- 1. Delete the dependent named Michael
DELETE FROM DEPENDENT
WHERE DName = 'Michael';

-- 2. Delete the WORKS_ON record where:
--    Essn = 999887777
DELETE FROM WORKS_ON
WHERE EmployeeID = '999887777';

--    Pno = 10
DELETE FROM WORKS_ON
WHERE PNum = '10';

-- 3. Delete project 20
DELETE FROM PROJECT
WHERE PNum = '20';

-- 4. Attempt to delete employee 123456789
DELETE FROM EMPLOYEE
WHERE SSN = '123456789'; --error because other records reference this

------------------------ TASK 4: INNER JOIN ------------------------
-- Join EMPLOYEE with DEPARTMENT and Display:  
-- a. Employee first name
SELECT 
-- b. Employee last name
-- c. Department name