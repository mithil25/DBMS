DROP DATABASE IF EXISTS Hospital;
CREATE DATABASE Hospital;
USE Hospital;

DROP TABLE IF EXISTS Doctor;
CREATE TABLE Doctor (
	Doc_id INT NOT NULL,
	Doc_first_name VARCHAR(20) NOT NULL,
    Doc_last_name VARCHAR(20) NOT NULL,
    Doc_mobile VARCHAR(50) NULL DEFAULT NULL,
    Doc_specialization VARCHAR(45) NOT NULL,
    Doc_salary INT NULL DEFAULT NULL,
    Doc_address VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (Doc_id)
    );

DROP TABLE IF EXISTS Patient;
CREATE TABLE Patient (
	P_id INT NOT NULL,
	P_first_name VARCHAR(20) NOT NULL,
    P_last_name VARCHAR(20) NOT NULL,
    P_dob DATE NOT NULL,
    P_mobile VARCHAR(50) NULL DEFAULT NULL,
    P_address VARCHAR(255) NOT NULL,
    P_insurence VARCHAR(255),
    Doc_id INT NOT NULL,
    PRIMARY KEY (P_id),
    CONSTRAINT fkDoctorPatients FOREIGN KEY (Doc_id) REFERENCES Doctor (Doc_id) ON DELETE RESTRICT ON UPDATE CASCADE
    );
    
DROP TABLE IF EXISTS Medical_Record;   
CREATE TABLE Medical_Record (
	P_problem VARCHAR(20) NULL DEFAULT NULL,
    Date_of_examination DATETIME NULL DEFAULT NULL,
    P_id INT NOT NULL,
    CONSTRAINT fKPatientRecord FOREIGN KEY (P_id) REFERENCES Patient (P_id) ON DELETE RESTRICT ON UPDATE CASCADE
    );

DROP TABLE IF EXISTS Room;   
CREATE TABLE Room (
	Room_id INT NOT NULL,
    Room_period DATETIME NULL DEFAULT NULL,
    Room_type VARCHAR(20) NOT NULL,
    P_id INT NOT NULL,
    PRIMARY KEY (Room_id),
    CONSTRAINT fKPatientRoom FOREIGN KEY (P_id) REFERENCES Patient (P_id) ON DELETE RESTRICT ON UPDATE CASCADE
    );
    
DROP TABLE IF EXISTS Medicine;   
CREATE TABLE Medicine (
	Medi_id INT NOT NULL,
	Medi_quantity INT NULL DEFAULT NULL,
    Medi_price int NOT NULL,
    P_id INT NOT NULL,
    PRIMARY KEY (Medi_id),
    CONSTRAINT fKPatientMedi FOREIGN KEY (P_id) REFERENCES Patient (P_id) ON DELETE RESTRICT ON UPDATE CASCADE
    );

DROP TABLE IF EXISTS Nurse;    
CREATE TABLE Nurse (
	N_id INT NOT NULL,
    N_name VARCHAR(45) NOT NULL,
    N_mobile VARCHAR(55) DEFAULT NULL,
    N_dob DATE NOT NULL,
    Room_id INT NOT NULL,
    PRIMARY KEY (N_id),
    CONSTRAINT fKRoomNurse FOREIGN KEY (Room_id) REFERENCES Room (Room_id) ON DELETE RESTRICT ON UPDATE CASCADE
    );
    
use hospital;

INSERT INTO Doctor
VALUES
(101, 'Ajit','Sharma', 7788498482, 'Cardiologist', 542135,null),
(102, 'Ramesh','kumar', 6027849494, 'Audiologist', 5441235, 'Chennai');

SELECT * FROM Doctor;
ALTER TABLE Doctor add Doc_name VARCHAR(40) as  (concat(Doc_first_name, ' ',Doc_last_name));


INSERT INTO Patient
VALUES
(1, 'Rahul','Raj', '1978-05-27', 6045218763, 'Bihar', 'qwertyuiop', 102),
(2, 'Ramesh','Athe', '1999-11-01', 7740562398, 'Delhi', 'asdfghjkl', 101);

ALTER TABLE Patient add P_name VARCHAR(40) as  (concat(P_first_name, ' ',P_last_name));

DROP TABLE Room;

SELECT * FROM Patient;

SELECT * FROM Doctor;











 















-- use hospital;
-- show tables;

-- INSERT INTO Doctor
-- VALUES
-- (1, 'athe', 788498, 'asdfg', 42135, 'fguhokm'),
-- (2, 'kumar', 7849494, 'asdfg', 441235, 'fguhokm');

-- SELECT * FROM Doctor;

-- -- INSERT INTO Room
-- -- VALUES
-- -- (1, 'rdcvdf', '2020-09-22 12:05:22', 1);

-- SELECT * FROM Patient;

-- INSERT INTO Patient
-- VALUES
-- (1, 'Ajit', 'Kumar', 25486, 'uxkvkid', '1998-02-12', 'sbdsu', 1),
-- (2, 'Mukesh', 'athe', 614, 'sdav', '2000-01-20', 'fvev', 2);

-- ALTER TABLE Patient add P_name VARCHAR(40) as  (concat(P_first_name, ' ',P_last_name)); 


-- DROP TABLE Patient;

-- -- ALTER TABLE Patient
-- -- DROP P_age;

-- -- ALTER TABLE Patient add P_age INT as TIMESTAMPDIFF(YEAR(P_dob), year(CURDATE())) AS age;
-- -- ALTER TABLE Patient add P_age INT as (year(curdate())-year(dob) - (right(curdate(),5) < right(dob,5)))

-- -- ALTER TABLE Patient add P_age INT;
-- -- UPDATE P_age = (year(curdate())-year(P_dob)) WHERE 


-- INSERT INTO Patient
-- VALUES
-- (1, 'Ajit Kumar', 25486, 'uxkvkid', '1998-02-12', 'sbdsu', 1),
-- (2, 'jaja', 64, 'sdav', '2000-01-20', 'fvev', 2);



























    