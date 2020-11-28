DROP DATABASE if exists CAR_INSURANCE;
CREATE DATABASE CAR_INSURANCE;
USE CAR_INSURANCE;

-- drop table T8_CUSTOMER;
-- table 1
CREATE TABLE IF NOT EXISTS T8_CUSTOMER 
(
Cust_Id VARCHAR(20) NOT NULL , 
Cust_FName VARCHAR(10) NOT NULL , 
Cust_LName VARCHAR(10) NOT NULL , 
Cust_DOB DATE NOT NULL ,
Cust_Gender CHAR(2) NOT NULL , 
Cust_Address VARCHAR(20) NOT NULL , 
Cust_MOB_Number VARCHAR(12) NOT NULL , 
Cust_Email VARCHAR(40) NULL ,
Cust_Passport_Number VARCHAR(20) NULL , 
Cust_Marital_Status VARCHAR(8) NULL , 
Cust_PPS_Number INTEGER NULL ,
CONSTRAINT XPKCUSTOMER_1 PRIMARY KEY (Cust_Id)
);
CREATE UNIQUE INDEX XPKCUSTOMER_1 ON T8_CUSTOMER (Cust_Id ASC);

INSERT INTO T8_CUSTOMER VALUES 
(80101, 'Advay', 'Aggarwal', '1999-01-03' , 'M','Ludhiana',9546335667,'18bcs002@iiitdwd.ac.in', 4745255465, 'Single', 801),
(80102, 'Akash', 'Kumar','2000-01-28' , 'M','Himachal Pradesh',8540045339,'18bcs003@iiitdwd.ac.in ', 1245512455, 'Single', 802),
(80103, 'Aniruddha', 'Mujumdar','1999-05-22' ,'M','Kashmir',9855654754,'18bcs005@iiitdwd.ac.in ',5565842365,'Divorced', 803),
(80104, 'Bhargava', 'H.S','1998-12-12' ,'M','New Delhi',8875456264,'18bcs018@iiitdwd.ac.in ',4565855855,'Single', 804),
(80105, 'Jagrut', 'Nemade','1999-06-20' ,'M','Pune',9956854525,'18bcs034@iiitdwd.ac.in ', 7666658364,'Divorced', 805),
(80106, 'Kshitiz', 'Micheal','1999-12-07 ','M','Madhya Pradesh',6654565855,'18bcs085@iiitdwd.ac.in ', 7745858364,'Divorced', 806),
(80107, 'Akarsh', 'Maurya','1999-10-14' ,'M','Mumbai',8875651200,'18bcs084@iiitdwd.ac.in ', 7491111664,'Married', 807),
(80108, 'Mithil', 'Anchan','1999-04-25' ,'M','Mumbai',5574856300,'18bcs072@iiitdwd.ac.in ', 7490000564,'Divorced', 808),
(80109, 'Udit', 'Pal','1999-05-29 ','M','Banglore ',9985100345,'18bcs107@iiitdwd.ac.in ', 7787878664,'Married', 809),
(80110, 'Amit', 'Shah','1998-09-16' ,'M','Banglore ',9857565810,'amitshah@gmail.com ', 4548200364,'Divorced', 810),
(80111, 'Rahul', 'Gandhi','1999-07-25' ,'M','Hyderabad ',8875469568,'rahulgandhi@gmail.com ', 6696333064,'Single', 811),
(80112, 'Kapil', 'Dev','1997-10-23' ,'M','Kolkata ',6520012301,'kapildev@gmail.com ', 7776758364,'Divorced', 812),
(80113, 'Kiran', 'Bedi','1994-11-12' ,'F','Pune ',7894561230,'kiranbedi@gmail.com ', 9999758364,'Divorced', 813),
(80114, 'Pooja', 'Sharma','1998-10-03' ,'F','Banglore ',9876543210,'poojasharma@gmail.com ', 7495555364,'Divorced', 814),
(80115, 'Jayakanat', 'Shikre','1975-07-02' ,'M','Banglore ',9985654123,'jayakantshikre@gmail.com ', 8896758364,'Divorced', 815),
(80116, 'Kalpana', 'Chawala','1995-10-23' ,'F','Lucknow ',6658400123,'kalpnachawala@gmail.com ', 7196447474,'Single', 816),
(80117, 'Ramesh', 'Athe','1980-01-24' ,'M','Pune ',9966586532,'rameshathe.com ', 7126854512,'Divorced', 817),
(80118, 'Rishav', 'Raj','1999-07-23' ,'M','Banglore ',9984532012,'rishavraj@gmail.com ', 8875462535,'Divorced', 818),
(80119, 'Ashok', 'Kumar','1967-07-01' ,'M','Lucknow ',7842024575,'ashokkumar@gmail.com ', 7496458364,'Married', 819),
(80120, 'Yuvraj', 'Singh','1985-07-23' ,'M','Mumbai',8854623569,'yuvrajsingh@gmail.com ', 4574562585,'Divorced', 820);

-- select * from T8_CUSTOMER;


-- table 2
CREATE TABLE IF NOT EXISTS T8_APPLICATION
(
Application_Id VARCHAR(20) NOT NULL , 
Vehicle_Id	VARCHAR(20) NOT NULL ,
Application_Status CHAR(8) NOT NULL , 
Coverage VARCHAR(50) NOT NULL , 
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKAPPLICATION_2 PRIMARY KEY (Application_Id,Cust_Id), 
CONSTRAINT R_93 FOREIGN KEY (Cust_Id) REFERENCES T8_CUSTOMER(Cust_Id)
);
CREATE UNIQUE INDEX XPKAPPLICATION_2 ON T8_APPLICATION (Application_Id ASC,Cust_Id ASC);

INSERT INTO  T8_APPLICATION VALUES ('80201', '80601', 'PENDING', 'Uninsured And Underinsured Motorist Coverage', '80101'),
    ('80202', '80602', 'ACCEPTED', 'Uninsured And Underinsured Motorist Coverage', '80102'),
    ('80203', '80603', 'PENDING', 'Medical Payments Coverage', '80103'),
    ('80204', '80604', 'REJECTED', 'Liability Coverage', '80104'),
    ('80205', '80605', 'ACCEPTED', 'Comprehensive Coverage', '80105'),
    ('80206', '80606', 'PENDING', 'Personal Injury Protection', '80106'),
    ('80207', '80607', 'PENDING', 'Uninsured And Underinsured Motorist Coverage', '80107'),
    ('80208', '80608', 'ACCEPTED', 'Liability Coverage', '80108'),
    ('80209', '80609', 'REJECTED','Collision Coverage' , '80109'),
    ('80210', '80610', 'PENDING', 'Medical Payments Coverage', '80110'),
    ('80211', '80611', 'PENDING', 'Liability Coverage', '80111'),
    ('80212', '80612', 'REJECTED', 'Comprehensive Coverage', '80112'),
    ('80213', '80613', 'ACCEPTED','Collision Coverage' , '80113'),
    ('80214', '80614', 'ACCEPTED', 'Medical Payments Coverage', '80114'),
    ('80215', '80615', 'REJECTED', 'Collision Coverage', '80115'),
    ('80216', '80616', 'ACCEPTED', 'Liability Coverage', '80116'),
    ('80217', '80617', 'REJECTED', 'Collision Coverage', '80117'),
    ('80218', '80618', 'PENDING','Medical Payments Coverage' , '80118'),
    ('80219', '80619', 'ACCEPTED', 'Comprehensive Coverage', '80119'),
    ('80220', '80620', 'REJECTED', 'Personal Injury Protection', '80120');
	
-- select * from T8_APPLICATION;




-- table 3
CREATE TABLE IF NOT EXISTS T8_QUOTE 
(
Quote_Id VARCHAR(20) NOT NULL ,
Issue_Date	DATE NOT NULL ,
Valid_From_Date	DATE NOT NULL ,
Valid_Till_Date	DATE NOT NULL ,
Descriptionn	VARCHAR(100) NULL ,
Product_Id	VARCHAR(20) NOT NULL ,
Coverage_Level	VARCHAR(20) NOT NULL ,
Application_Id	VARCHAR(20) NOT NULL ,
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKQU0TE_3 PRIMARY KEY (Quote_Id,Application_Id,Cust_Id),
CONSTRAINT R_94 FOREIGN KEY (Application_Id, Cust_Id) REFERENCES T8_APPLICATION (Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKQUOTE_3 ON T8_QUOTE (Quote_Id ASC,Application_Id ASC,Cust_Id ASC);

INSERT INTO T8_QUOTE VALUES
    ('80301', '2020-02-08', '2020-02-08', '2025-02-08', 'TVS Jupiter ZS', 'T8DUMA327', '5000', '80201', '80101'),
    ('80302', '2017-04-01', '2017-04-01', '2023-04-01',  'Honda Activa PRO 125', 'T8EION8500', '3000', '80202', '80102'),
    ('80303', '2020-06-08', '2020-06-08', '2026-06-08',  'Maruti Suzuki S-Cross LXI', 'T8BRUH420', '90000', '80203', '80103'),
    ('80304', '2014-09-29', '2014-09-29', '2021-09-29',  'Honda Activa 6G+ standard', 'T8LISR699', '6000', '80204', '80104'),
    ('80305', '2019-07-04', '2019-07-04', '2024-07-04',  'Suzuki Access Pro 125', 'T8JAIM021', '9000', '80205', '80105'),
    ('80306', '2020-12-09', '2020-12-09', '2025-12-09',  'Yamaha FZ', 'T8LSEI236', '5000', '80206', '80106'),
    ('80307', '2020-10-23', '2020-10-23', '2025-10-23',  'Skoda Octavia', 'T8KENS902', '9000', '80207', '80107'),
    ('80308', '2019-05-29', '2019-05-29', '2024-05-29',  'Volvo Xt250 2.0 D5 Momentum AT 4WD', 'T8EHIV234', '50000', '80208', '80108'),
    ('80309', '2016-11-06', '2016-11-06', '2021-11-06',  'Toyota Moto GT Cruiser', 'T8QEID230', '9000', '80209', '80109'),
    ('80310', '2020-09-08', '2020-09-08', '2026-09-08',  'Honda Activa 6G standard', 'T8QEWN382', '6000', '80210', '80110'),
    ('80311', '2020-07-10', '2020-07-10', '2025-07-10',  'Honda Navi', 'T8TYST969', '8000', '80211', '80111'),
    ('80312', '2018-12-10', '2018-12-10', '2023-12-10',   'Honda Activa 6G standard', 'T8KSHD345', '9000', '80212', '80112'),
    ('80313', '2017-01-02', '2017-01-02', '2022-01-02',  'TVS XL100', 'T8SALE387', '2000', '80213', '80113'),
    ('80314', '2018-11-10', '2018-11-10', '2023-11-10',  'Jaguar Banshee 250', 'T8BSDK133', '6000', '80214', '80114'),
    ('80315', '2019-02-09', '2019-02-09', '2025-02-09',  'Volkswagen T-Roc', 'T8LSHI374', '9000', '80215', '80115'),
    ('80316', '2018-10-06', '2018-10-06', '2024-10-06',  'Honda Activa 125', 'T8KJEI280', '6000', '80216', '80116'),
    ('80317', '2018-04-28', '2018-04-28', '2023-04-28',  'Bajaj Pulsar 150', 'T8FCUK038', '50000', '80217', '80117'),
    ('80318', '2020-06-11', '2020-06-11', '2025-06-11',  'Royal Enfield Classic 350', 'T8LEOW783', '5000', '80218', '80118'),
    ('80319', '2017-03-03', '2017-03-03', '2022-03-03',  'TVS NTORQ 650', 'T8BOLW938', '5000', '80219', '80119'),
    ('80320', '2016-05-04', '2016-05-04', '2021-05-04',  'Benely TS 420', 'T8CHOU392', '5000', '80220', '80120');



-- drop table T8_INSURANCE_POLICY;
-- table 4
CREATE TABLE IF NOT EXISTS T8_INSURANCE_POLICY 
(
Agreement_id VARCHAR(20) NOT NULL , 
-- Department_Name VARCHAR(20) NULL , 
Policy_Number VARCHAR(20) NULL , 
Start_Date	DATE NULL ,
Expiry_Date DATE NULL , 
Term_Condition_Description VARCHAR(150) NULL , 
Application_Id VARCHAR(20) NOT NULL , 
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKINSURANCE_POLICY_4 PRIMARY KEY(Agreement_id,Application_Id,Cust_Id),
CONSTRAINT R_95 FOREIGN KEY (Application_Id, Cust_Id) REFERENCES T8_APPLICATION (Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKINSURANCE_POLICY_4 ON T8_INSURANCE_POLICY (Agreement_id ASC,Application_Id ASC,Cust_Id ASC);

INSERT INTO T8_INSURANCE_POLICY VALUES ('80401' ,'20001','2020-02-08', '2022-02-08','Coverage And Protection against loss of or damage to your vehicle caused by theft','80201' ,'80101'),
	  ('80402','20002','2020-03-08', '2022-03-08',  'Coverage And Protection against loss of or damage to your vehicle caused by accident,fire','80202' ,'80102'),
      ('80403' ,'20003','2020-04-08', '2022-04-08',  'Coverage And Protection against loss of or damage to your vehicle caused by fire,explosion,self-ignition,lightning,riots','80203' ,'80103'),
      ('80404','20004','2020-05-01', '2022-05-03',  'Coverage And Protection against loss of or damage to your vehicle caused by accident,theft,fire,explosion','80204', '80104'),
      ('80405','20005','2020-05-08', '2022-05-08',  'Coverage And Protection against loss of or damage to your vehicle caused by accident,fire,explosion,lightning,riots', '80205','80105'),
      ('80406'  ,'20006','2020-01-08', '2022-01-08',  'Coverage And Protection against loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,lightning,riots','80206' ,'80106'),
      ('80407' ,'20007','2020-02-08', '2022-02-08',  'Coverage And Protection against loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,riots','80207' ,'80107'),
      ('80408' ,'20008','2020-02-08', '2022-02-08',  'Coverage And Protection against loss of or damage to your vehicle caused by accident','80208' ,'80108'),
      ('80409','20009','2020-04-08', '2022-03-08', 'Liability Coverage' ,'80209' ,'80109'),
      ('80410' ,'20010','2020-07-08', '2021-01-08',  'Coverage And Protection against loss of or damage to your vehicle caused by riots,strikes','80210' ,'80110'),
      ('80411','20011','2020-02-08', '2021-02-08',  'Coverage And Protection against loss of or damage to your vehicle caused by natural Phenomenon','80211' ,'80111'),
      ('80412' ,'20012','2020-12-08', '2022-12-08',  'Liability Coverage','80212' ,'80112'),
      ('80413' ,'20013','2020-07-08', '2022-07-08',  'Coverage And Protection against loss of or damage to your vehicle caused by natural phenomenon','80213' ,'80113'),
      ('80414' ,'20014','2020-05-08', '2022-08-20',  'Coverage And Protection against loss of or damage to your vehicle caused by natural phenomenon','80214' ,'80114'),
      ('80415' ,'20015','2020-09-08', '2022-01-08',  'Liability Coverage','80215' ,'80115'),
      ('80416' ,'20016','2020-11-08', '2022-11-08',  'Liability Coverage','80216' ,'80116'),
      ('80417', '20017','2020-10-08', '2022-12-08',  'Coverage And Protection against loss of or damage to your vehicle caused by accident,theft,fire,natural phenomenon','80217' ,'80117'),
      ('80418' ,'20018','2020-02-08', '2022-01-08',  'Liability Coverage','80218' ,'80118'),
      ('80419','20019','2020-02-08', '2021-02-08',  'Coverage And Protection against loss of or damage to your vehicle caused by accidente','80219' ,'80119'),
      ('80420', '20020','2020-05-08', '2021-02-08',  'Coverage And Protection against loss of or damage to your vehicle caused by natural phenomenon','80220' ,'80120');




-- drop table T8_PREMIUM_PAYMENT;
-- table 5
CREATE TABLE IF NOT EXISTS T8_PREMIUM_PAYMENT 
(
Premium_Payment_Id VARCHAR(20) NOT NULL , 
Policy_Number VARCHAR(20) NOT NULL , 
Premium_Payment_Amount INTEGER NOT NULL , 
Premium_Payment_Schedule DATE NOT NULL , 
Receipt_Id VARCHAR(20) NOT NULL , 
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKPREMIUM_PAYMENT_5 PRIMARY KEY(Premium_Payment_Id,Cust_Id),
CONSTRAINT R_85 FOREIGN KEY (Cust_Id) REFERENCES T8_CUSTOMER(Cust_Id)
);
CREATE UNIQUE INDEX XPKPREMIUM_PAYMENT_5 ON T8_PREMIUM_PAYMENT (Premium_Payment_Id ASC,Cust_Id ASC);

INSERT INTO T8_PREMIUM_PAYMENT VALUES(80501 , '20001' , 50000 ,'2018-12-23' , 82101, 80101 ),
(80502 , '20002' , 42000 ,'2019-11-20' ,  82102 ,80102),
(80503 , '20003' , 42000 ,'2018-02-25' ,  82103 , 80103 ),
(80504 , '20004' , 2000000 , '2019-05-15' , 82104 , 80104 ),
(80505 , '20005' , 42000 , '2018-04-13' ,  82105 , 80105 ),
(80506 , '20006' , 70000 ,'2019-04-21' ,  82106 , 80106 ),
(80507 , '20007' , 78000 , '2018-09-11' ,  82107 , 80107 ),
(80508 , '20008' , 60000 ,'2019-09-24' , 82108 , 80108 ),
(80509 , '20009' , 36000 , '2018-08-12'  , 82109 , 80109 ),
(80510 , '20010' , 68000 , '2019-01-23' , 82110 , 80110 ),
(80511 , '20011' , 32000 , '2018-11-17' , 82111 , 80111 ),
(80512 , '20012' , 3400000 , '2019-12-14' ,  82112 , 80112 ),
(80513 , '20013' , 38000 , '2018-10-06' , 82113 , 80113 ),
(80514 , '20014' , 40000 ,'2019-10-09' ,  82114 , 80114 ),
(80515 , '20015' , 55000 ,'2018-05-02' , 82115 , 80115 ),
(80516 , '20016' , 58000 , '2019-05-10' , 82116 , 80116 ),
(80517 , '20017' , 50000 ,'2019-06-12' ,  82101 , 80117 ),
(80518 , '20018' , 62000 ,'2018-06-29' , 82118 , 80118 ),
(80519 , '20019' , 84000 , '2019-02-19' , 82119 , 80119 );
-- (80520 , '20020' , 40000 ,'2018-11-20' ,82120 , 80120 );

-- select * from T8_PREMIUM_PAYMENT;





-- drop table T8_VEHICLE;
-- table 6
CREATE TABLE IF NOT EXISTS T8_VEHICLE 
(
Vehicle_Id VARCHAR(20) NOT NULL , 
Policy_Id VARCHAR(20) NULL ,
Dependent_NOK_Id VARCHAR(20) NULL , 
Vehicle_Registration_Number VARCHAR(20) NOT NULL , 
Vehicle_Value INTEGER NULL ,
Vehicle_Type VARCHAR(20) NOT NULL , 
Vehicle_Size INTEGER NULL , 
Vehicle_Number_Of_Seat INTEGER NULL , 
Vehicle_Manufacturer VARCHAR(20) NULL , 
Vehicle_Engine_Number INTEGER NULL , 
Vehicle_Chasis_Number INTEGER NULL , 
Vehicle_Number VARCHAR(20) NULL , 
Vehicle_Model_Number VARCHAR(20) NULL , 
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKVEHICLE_6 PRIMARY KEY (Vehicle_Id,Cust_Id),
CONSTRAINT R_92 FOREIGN KEY (Cust_Id) REFERENCES T8_CUSTOMER(Cust_Id)
);
CREATE UNIQUE INDEX XPKVEHICLE_6 ON T8_VEHICLE(Vehicle_Id ASC,Cust_Id ASC);

 INSERT INTO T8_VEHICLE VALUES
    ('80601', '20001','81401', 'MH 01 AZ 9009', 1000000, '4 wheeler', 15.4, 4, 'Skoda', 51701, 52701, 991101, 'FZS-500100', '80101'),
    ('80602', '20002','81402', 'KA 09 BY 8118', 500000, '4 wheeler', 12.8, 4, 'TATA', 51702, 52702, 801301, 'FZS-780100', '80102'),
    ('80603', '20003','81403','MH 11 CX 7227', 750000, '4 wheeler', 12.8, 4, 'TATA', 51703, 52703, 320901, 'FZS-589900', '80103'),
    ('80604', '20004','81404', 'MH 35 DW 6336', 1200000, '4 wheeler', 19.4, 6, 'Mercedes', 51704, 52704, 549101, 'FZS-487100', '80104'),
    ('80605', '20005','81405', 'GA 02 EV 5445', 1690000, '4 wheeler', 25.4, 8, 'Mahindra', 51705, 52705, 994100, 'FZS-848500', '80105'),
    ('80606', '20006','81406', 'UP 29 FU 4554', 800000, '4 wheeler', 15.4, 4, 'Maruti', 51706, 52706, 991181, 'FZS-587533', '80106'),
    ('80607', '20007','81407', 'MP 56 GT 3663', 900000, '4 wheeler', 19.4, 5, 'Mahindra', 51707, 52707, 799110, 'FZS-587130', '80107'),
    ('80608', '20008','81408', 'KA 10 HS 2772', 759999, '4 wheeler', 15.4, 4, 'Skoda', 51708, 52708, 991171, 'FZS-503452', '80108'),
    ('80609', '20009','81409', 'MH 17 IR 1881', 920000, '4 wheeler', 15.4, 4, 'Tata', 51709, 52709, 2990101, 'FZS-340100', '80109'),
    ('80610', '20010','81410', 'RJ 41 JQ 0990', 2300000, '4 wheeler', 25.4, 9, 'BMW', 51710, 52710, 771201, 'FZS-450100', '80110'),
    ('80611', '20011','81411', 'CH 35 KP 0000', 2500000, '4 wheeler', 25.4, 8, 'AUDI', 51711, 52711, 881101, 'FZS-343100', '80111'),
    ('80612', '20012','81412', 'MP 27 LO 1111', 1699990, '4 wheeler', 19.4, 6, 'Skoda', 51712, 52712, 998641, 'FZS-3450100', '80112'),
    ('80613', '20013','81413', 'UP 18 MN 2222', 700000, '4 wheeler', 12.4, 4, 'Maruti', 51713, 52713, 459110, 'FZS-5554100', '80113'),
    ('80614', '20014','81414', 'GA 09 AB 3333', 1500000, '4 wheeler', 19.4, 6, 'Honda', 51714, 52714, 488101, 'FZS-534100', '80114'),
    ('80615', '20015','81415', 'KA 11 CD 4444', 1100000, '4 wheeler', 15.4, 4, 'Ford', 51715, 52715, 978101, 'FZS-5002300', '80115'),
    ('80616', '20016','81416', 'MH 07 EF 5555', 1700000, '4 wheeler', 19.4, 5, 'Ford', 51716, 52716, 999901, 'FZS-2340100', '80116'),
    ('80617', '20017','81417', 'MH 34 GH 6666', 800000, '4 wheeler', 12.4, 4, 'Volkswagon', 51717, 52717, 279101, 'FZS-000100', '80117'),
    ('80618', '20018','81418', 'HP 14 HI 7777', 900000, '4 wheeler', 15.4, 4, 'Skoda', 51718, 52718, 191877, 'FZS-430100', '80118'),
    ('80619', '20019','81419', 'DL 34 JK 8888', 650000, '4 wheeler', 12.4, 4, 'Maruti', 51718, 52719, 998741, 'FZS-5433100', '80119'),
    ('80620', '20020','81420', 'MH 12 LM 9999', 1200000, '4 wheeler', 19.4, 6, 'BMW', 51720, 52720, 485631, 'FZS-940100', '80120');
insert into T8_VEHICLE values ('80621', '20020','81420', 'MH 35 KP 0020', 25000, '4 wheeler', 25.4, 8, 'AUDI', 51711, 52711, 881101, 'FZS-343100', '80120');
-- select * from T8_VEHICLE;






-- drop table T8_CLAIM;
-- table 7
CREATE TABLE IF NOT EXISTS T8_CLAIM
(
Claim_Id VARCHAR(20) NOT NULL ,
Agreement_Id VARCHAR(20) NOT NULL ,
Claim_Amount INTEGER NOT NULL ,
Incident_Id	VARCHAR(20) NOT NULL ,
Damage_Type	VARCHAR(50) NOT NULL ,
Date_Of_Claim DATE NOT NULL , 
Claim_Status CHAR(10) NOT NULL , 
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKCLAIM_7 PRIMARY KEY (Claim_Id,Cust_Id), 
CONSTRAINT R_88 FOREIGN KEY (Cust_Id) REFERENCES T8_CUSTOMER (Cust_Id)
);
CREATE UNIQUE INDEX XPKCLAIM_7 ON T8_CLAIM (Claim_Id ASC,Cust_Id ASC);

INSERT INTO T8_CLAIM VALUES
    ('80701','80401' ,'400000','81701' ,'Self-ignition','2021-03-03','Approved','80101'),
    ('80702','80402' ,'500000','81702' ,'Aggravated damage','2021-02-04','Rejected','80102'),
    ('80703', '80403','350000','81703' ,'Collision Coverage','2021-07-29','Approved','80103'),
    ('80704', '80404','150000','81704' ,'Drunken Driving','2021-02-23','pending','80104'),
    ('80705', '80405','250000', '81705','External Explosion','2021-03-06','Approved','80105'),
    ('80706', '80406','270000','81706' ,'Natural Calamity','2021-08-23','Pending','80106'),
    ('80707', '80407','250000','81707' ,'Fire','2021-12-19','Rejected','80107'),
    ('80708','80408' ,'400000','81708' ,'Theft','2021-03-03','Approved','80108'),
    ('80709','80409' ,'200000','81709' ,'Mechanical Breakdown','2021-02-04','Rejected','80109'),
    ('80710', '80410','550000','81710' ,'Auto Liability Coverage','2021-07-29','Approved','80110'),
    ('80711', '80411','280000','81711' ,'Weather Damage','2021-02-23','Pending','80111'),
    ('80712', '80412','350000', '81712','Burglar','2021-03-06','Approved','80112'),
    ('80713', '80413','370000','81713' ,'Floods Damage','2021-08-23','Pending','80113'),
    ('80714', '80414','450000','81714' ,'Personal Injury','2021-12-19','Rejected','80114'),
    ('80715', '80415','250000', '81715','Comprehensive Insurance','2021-03-06','Approved','80115'),
    ('80716', '80416','170000','81716' ,'Damage of the Engine','2021-08-23','Pending','80116'),
    ('80717', '80417','350000','81717' ,'Nuclear Perils','2021-12-19','Rejected','80117'),
    ('80718', '80418','250000', '81718','Vehicle Damage','2021-03-06','Approved','80118'),
    ('80719', '80419','170000','81719' ,'Lightning','2020-08-23','Pending','80119'),
    ('80720', '80420','450000','81720' ,'Windshield Damage','2020-12-19','Rejected','80120');






-- drop table T8_CLAIM_SETTLEMENT;
-- table 8
CREATE TABLE IF NOT EXISTS T8_CLAIM_SETTLEMENT 
(
Claim_Settlement_Id VARCHAR(20) NOT NULL , 
Vehicle_Id VARCHAR(20) NOT NULL ,
Date_Settled DATE NOT NULL , 
Amount_Paid INTEGER NOT NULL , 
Coverage_Id VARCHAR(20) NOT NULL , 
Claim_Id VARCHAR(20) NOT NULL , 
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKCLAIM_SETTLEMENT_8 PRIMARY KEY (Claim_Settlement_Id,Claim_Id,Cust_Id),
CONSTRAINT R_90 FOREIGN KEY (Claim_Id, Cust_Id) REFERENCES T8_CLAIM (Claim_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKCLAIM_SETTLEMENT_8 ON T8_CLAIM_SETTLEMENT (Claim_Settlement_Id ASC,Claim_Id ASC,Cust_Id ASC);

INSERT INTO T8_CLAIM_SETTLEMENT VALUES
    ('80801','80601','2021-03-23','400000', '81901', '80701', '80101'),
    ('80802','80603','2021-09-20','350000', '81903', '80703','80103'),
    ('80803','80605','2021-08-11','250000', '81905', '80705','80105'),
    ('80804','80608','2021-03-04','400000', '81908', '80708','80108'),
    ('80805','80610','2021-09-15','550000', '81910', '80710','80110'),
    ('80806','80612','2021-11-05','350000', '81912', '80712','80112'),
    ('80807','80615','2021-11-05','250000', '81915', '80715','80115'),
    ('80808','80618','2021-11-05','250000', '81918', '80718','80118');



-- drop table T8_INSURANCE_COMPANY;
-- table 15
CREATE TABLE IF NOT EXISTS T8_INSURANCE_COMPANY
(
Company_Name	VARCHAR(100) NOT NULL ,
Company_Address	VARCHAR(300) NULL ,
Company_Contact_Number VARCHAR(20) NULL ,
Company_Fax	VARCHAR(20) NULL ,
Company_Email	VARCHAR(50) NULL ,
Company_Website	VARCHAR(100) NULL ,
Company_Location	VARCHAR(100) NULL ,
Company_Department_Name VARCHAR(50) NULL , 
Company_Office_Name VARCHAR(50) NULL ,
CONSTRAINT XPKINSURANCE_COMPANY_15 PRIMARY KEY (Company_Name)
);
CREATE UNIQUE INDEX XPKINSURANCE_COMPANY_15 ON T8_INSURANCE_COMPANY (Company_Name ASC);

INSERT INTO T8_INSURANCE_COMPANY VALUES
('Aegon Vehicle Insurance Company Limited','206 & 207, 2nd Floor, Aditya Trade Center, 7-1-618, Ameerpet, Hyderabad, Telangana 500038',885432564,7856542563,'AegonVehicle@help.com','AegonVehicle.com','Hyderabad','AegonVehicleoffice','AegonVehicleoffice'),
('Aviva Vehicle Insurance Company Limited', 'Towers, Sector Road, Opposite Golf Course, DLF Phase V, Sector 43, Gurgaon – 122003.',8584063500,5684001620,'aiaamaxVehicle@help.com','aviamaxVehicle.com','Gurgaon','aviamaxVehicleoffice','aviamaxVehicleoffice'),
('Bajaj Allianz Vehicle Insurance Company Limited', 'Hno 6-130, 1st Floor Above ING Vysya Bank Market Road Adilabad Mancherial Andhra Pradesh Telangana',9769915832,5033256789,'customercare@bajajallianz.co.in','https://www.bajajallianzVehicle.com','Pune',' Bajaj Allianz Vehicle Insurance Co',' Bajaj Allianz Vehicle Insurance Co'),
('Bharti AXA Vehicle Insurance Company Limited','130, Unit No. 1904, 19th Floor, Parinee Crescenzo, G Block, Bandra',9986555754,9965865932,'BhartiVehicle@help.com', 'BhartiVehicle.com', 'Mumbai', 'BhartiVehicleoffice', 'BhartiVehicleoffice'),
('Birla Sun Vehicle Insurance Company Limited', 'One World Center, Tower 1, 16th Floor, Jupiter Mill Compound, 841, Senapati Bapat Marg, Elphinstone Road, Mumbai',9769915765,5033256700,'care.Vehicleinsurance@adityabirlacapital.com', 'https://Vehicleinsurance.adityabirlacapital.com', 'Mumbai ', 'Birla Sun Vehicle Insurance ', 'Birla Sun Vehicle Insurance '),
('Canara HSBC Oriental Bank of Commerce LIC Limited','206 & 207, 2nd Floor, Aditya Trade Center, 7-1-618, Ameerpet, Hyderabad, Telangana 500038',8546592548,8756452563,'CanaraVehicle@help.com','CanaraVehicle.com','Hyderabad','CanaraVehicleoffice','CanaraVehicleoffice'),
('DLF Pramerica Vehicle Insurance Company Limited', 'Office No.501- 520, on 5th floor, Bezzola Complex C.H.S. Ltd., S. No. 237, C.S. No. 353, 352/2, 353/3, 353/4, Sion Trombay Road,',9854256527,8545652315,'DLFVehicle@help.com','DLFVehicle.com','Sion','DLFVehicleoffice','DLFVehicleoffice'),
('Exide Vehicle Insurance Company Limited','Registered Office: 3rd Floor, JP Techno Park, No. 3/1, Millers Road, Bangalore- 560 001, India.',9769915414,5033256715,'ExideVehicleInsurance@gmail.com','https://www.exideVehicle.in/','Mumbai','exidVehicleoffice','exideVehicle'),
('Future Generali India Vehicle Insurance Company Limited','1st Floor, 7-1-21A, Raj Bhavan Rd, opp. Vehiclestyle Building, beside Vinn Hospital APDL Estates, Begumpet, Hyderabad, Telangana 500016',8874010012,8875649582,'FutureVehicle@help.com','FutureVehicle.com','Hyderabad','FutureVehicleoffice','FutureVehicleoffice'),
('HDFC Vehicle Insurance Company Limited','Lodha Excelus, 13th Floor, Apollo Mills Compound, N.M. Joshi Marg, Mahalaxmi, Mumbai',9769915777,NULL,'buyonline@hdfcVehicle.in','https://www.hdfcVehicle.com/','Mumbai','hdfcVehicle','hdfcVehicle'),
('ICICI Prudential Vehicle Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai ',9769915766,5033256751,'icicipruVehicle@gmail.com','https://www.icicipruVehicle.com/','Mumbai',' ICICI PruVehicle',' ICICI PruVehicle'),
('IDBI Federal Vehicle Insurance Company Limited','3-5-922 Sri Sai Balaji Residency, Near Narayanaguda Flyover, Hyderabad, Telangana 500029',5685478562,8986570120,'IDBIFederalVehicle@help.com','IDBIFederalVehicle.com','Hyderabad','IDBI FederalVehicleoffice','IDBIFederalVehicleoffice'),
('Kotak Vehicle Insurance Company Limited','Kotak Mahindra Vehicle Insurance Company Limited, Regd. Office: 2nd Floor, Plot # C- 12, G- Block, BKC, Bandra (E), Mumbai - 400 051',4659878165,4659875642,'KotakVehicleInsurance@help.com','KotakVehicleInsurance.com','Mumbai','kotakVehicleoffice','kotakVehicleoffice'),
('Max Vehicle Insurance Company Limited','Max Vehicle Insurance Co. Ltd., 3rd, 11th and 12th Floor, DLF Square Building, Jacaranda Marg, DLF City Phase II, Gurugram (Haryana) - 122002',9769915577,5033256720,'maxVehicle@help.com','maxVehicle.com','Gurugram','maxVehicleoffice','maxVehicleoffice'),
('PNB MetVehicle India Insurance Company Limited','PNB MetLife Insurance Company Limited 2nd Floor, Peninsula Tower, A Wing Peninsula Corp. Park, G. K. Marg Lower Parel, Mumbai - 400 013',4698712654,5033256714,'pnbmedVehicle@help.com','pnbmedVehicle.com', 'Mumbai','medVehicleoffice','pnbVehicleoffice'),
('Reliance Vehicle Insurance Company Limited','Reliance Centre, 5th floor, Off Western Express Highway, Santacruz East, Mumbai, Mumbai-City district, Maharashtra-400055',18068168110020,55540542020,'relianceVehicle@help.com','relianceVehicle.com', 'Mumbai', 'relianceVehicleoffice', 'relianceVehicleoffice'),
('SBI Vehicle Insurance Company Limited','SBI Vehicle Corporate Solutions. 7th Floor, "Natraj", MV Road & Western Express Highway Junction, Andheri (East) , Mumbai - 400 069',1659756489,6598325146,'sbiVehicle@help.com','sbiVehicle.com','Mumbai','sbiVehicleoffice','sbiVehicleoffice'),
('Shriram Vehicle Insurance Company Limited','Bank Training Centre, Financial District, Gachibowli, Hyderabad, TG, India – 500032.',7785468265,8875965240,'ShriramVehicle@help.com', 'ShriramVehicle.com','Hyderabad', 'ShriramVehicleoffice','ShriramVehicleoffice'),
('Tata AIA Vehicle Insurance Company Limited','Floor, Tower A, Peninsula Business Park, Senapati Bapat Marg, Lower Parel, Mumbai 400013',2325364645,8379847393,'tataaia@help.com','tataVehicle.com','Mumbai','tataVehicleoffice','tataVehicleoffice'),
('Vehicle Insurance Corporation of India','2nd Floor Jagtial 505327',9769915552,5033256779,'lic@gmail.com','www.lic.com','jagtial','licjagtial','licjag');
-- select * from T8_INSURANCE_COMPANY;






-- drop table T8_STAFF;
-- table 9
CREATE TABLE IF NOT EXISTS T8_STAFF
(
Staff_Id VARCHAR(20) NOT NULL ,
Staff_Fname	VARCHAR(10) NULL ,
Staff_LName	VARCHAR(10) NULL ,
Staff_Adress VARCHAR(20) NULL ,
Staff_Contact VARCHAR(12) NULL ,
Staff_Gender VARCHAR(2) NULL ,
Staff_Marital_Status VARCHAR(10) NULL ,
Staff_Nationality CHAR(15) NULL ,
Staff_Qualification VARCHAR(20) NULL ,
Staff_Allowance	INTEGER NULL ,
Staff_PPS_Number INTEGER NULL ,
Company_Name VARCHAR(50) NOT NULL ,
CONSTRAINT XPKSTAFF_9 PRIMARY KEY (Staff_Id,Company_Name),
CONSTRAINT R_105 FOREIGN KEY (Company_Name) REFERENCES T8_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKSTAFF_9 ON T8_STAFF (Staff_Id ASC,Company_Name ASC);

INSERT INTO T8_STAFF VALUES 
 ('80901','Advay','Aggarwal','Pune',6795980389,'M','Married','Indian','MTech',100000, 80632451,'Bajaj Allianz Vehicle Insurance Company Limited'),
 ('80902','Akash','Kumar','Mumbai',8600052431,'M','Divorced','Indian','MTech',70000, 80063252,'HDFC Vehicle Insurance Company Limited'),
 ('80903','Jagrut','Nemade','Nasik',6705789530,'M','Unmarried','Indian','BA',20000, 56323453, 'Bajaj Allianz Vehicle Insurance Company Limited'),
 ('80904','Kshitiz','Micheal','Thane',6763699981,'M','Married','Indian','BTech',10000, 805633454, 'Aegon Vehicle Insurance Company Limited'),
 ('80905','Akarsh','Maurya','Mumbai',6752442045,'M','Married','Indian','MTech',50000, 56313480, 'HDFC Vehicle Insurance Company Limited'),
 ('80906','Mithil','Anchan','Manglore',6785240946,'M','Unmarried','Indian','MBA',37000, 96213456, 'Max Vehicle Insurance Company Limited'),
 ('80907','Bhargava','H.S','Mumbai',8848721479,'M','Married','Indian','MTech',18000, 80013457, 'Max Vehicle Insurance Company Limited'),
 ('80908','Aniruddha','M','Pune',9425797603,'M','Married','Indian','MTech',11000, 80013458, 'Bajaj Allianz Vehicle Insurance Company Limited'),
 ('80909','Udit','Pal','Mumbai',9589892847,'M','Married','Indian','MTech',12500, 80013459, 'Max Vehicle Insurance Company Limited'),
 ('80910','Ramesh','Patel','Mumbai',7972990901,'M','Married','Indian','Matric',7000, 80013460,'Reliance Vehicle Insurance Company Limited'),
 ('80911','Pooja','Mishra','Mumbai',893363049,'M','Married','Indian','MBA',86000, 80013461, 'Aviva Vehicle Insurance Company Limited'),
 ('80912','M.D','Ghoni','Pune',8976191987,'F','Married','Indian','Finance',76000, 80013462, 'Max Vehicle Insurance Company Limited'),
 ('80913','Niraj','Kumar','Mumbai',9425971114,'M','Married','Indian','MTech',80000, 80013463, 'Bajaj Allianz Vehicle Insurance Company Limited'),
 ('80914','Soni','Kumarii','Thane',8976066096,'M','Married','Indian','MBA',56000, 80013464, 'Max Vehicle Insurance Company Limited'),
 ('80915','Munna','Reddy','Mumbai',9425050666,'M','Married','Indian','BCOM',37000, 80013465, 'HDFC Vehicle Insurance Company Limited'),
 ('80916','Sonali','Sinha','Mumbai',9490215699,'F','Married','Indian','MTech',62000, 80013466, 'ICICI Prudential Vehicle Insurance Company Limited'),
 ('80917','Riya','Sharma','Thane',9303293026,'M','Married','Indian','BCOM',14000, 80013467, 'Birla Sun Vehicle Insurance Company Limited'),
 ('80918','Ritik','prakash','Mumbai',9032953400,'M','Married','Indian','MTech',19000, 80013468, 'Bajaj Allianz Vehicle Insurance Company Limited'),
 ('80919','Suresh','Roy','Mumbai',9304548845,'M','Married','Indian','MTech',45000, 80013469,'Max Vehicle Insurance Company Limited'),
 ('80920','Hindustani','Bhau','Mumbai',9752416329,'M','Married','Indian','MTech',34000, 80013470, 'Max Vehicle Insurance Company Limited');





-- drop table T8_DEPARTMENT;
-- table 10
CREATE TABLE IF NOT EXISTS T8_DEPARTMENT 
(
Department_Name	VARCHAR(50) NOT NULL , 
-- Department_ID CHAR(18) NOT NULL , 
Department_Staff CHAR(50) NULL , 
Company_Name VARCHAR(100) NOT NULL ,
CONSTRAINT XPKDEPARTMENT PRIMARY KEY(Department_Name,Company_Name),
CONSTRAINT R_56 FOREIGN KEY (Company_Name) REFERENCES T8_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKDEPARTMENT ON T8_DEPARTMENT (Department_Name ASC,Company_Name ASC);

INSERT INTO T8_DEPARTMENT VALUES 	
('Accounting Department', 'rajesh khanna', 'Shriram Vehicle Insurance Company Limited'),
('Agency Department', 'aniruddha', 'Future Generali India Vehicle Insurance Company Limited'),
('Actuarial and Statistical Department',  'pranav', 'Shriram Vehicle Insurance Company Limited'),
('Audit Department',  'mahesh bhatt', 'Aegon Vehicle Insurance Company Limited'),
('Audit Department',  'bharghava h.s', 'SBI Vehicle Insurance Company Limited'),
('Investment Department', 'mahesh kumar', 'IDBI Federal Vehicle Insurance Company Limited'),
('Claims Department', 'akash kumar', 'Birla Sun Vehicle Insurance Company Limited'),
('Claims and audit Department',  'rashmi', 'Birla Sun Vehicle Insurance Company Limited'),
('Claims and audit loss Department',  'sultan', 'Birla Sun Vehicle Insurance Company Limited'),
('Claims Department',  'priya sharma', 'IDBI Federal Vehicle Insurance Company Limited'),
('Legal Department',  'mithil anchani', 'Exide Vehicle Insurance Company Limited'),
('Legal Department',  'jagrut nemade', 'HDFC Vehicle Insurance Company Limited'),
('Legal Department',  'kshitz micheal ', 'ICICI Prudential Vehicle Insurance Company Limited'),
('Legal Department',  'sachin', 'IDBI Federal Vehicle Insurance Company Limited'),
('Legal Department',  'akarsh maurya', 'Kotak Vehicle Insurance Company Limited'),
('Marketing Department', 'udit pal', 'IDBI Federal Vehicle Insurance Company Limited'),
('Reinsurance Department',  'kapil sharma', 'Canara HSBC Oriental Bank of Commerce LIC Limited'),
('Underwriting Department',  'advay aggarwall', 'Bajaj Allianz Vehicle Insurance Company Limited'),
('Underwriting Department', 'pooja mishra', 'Canara HSBC Oriental Bank of Commerce LIC Limited'),
('Underwriting Department', 'binod', 'Shriram Vehicle Insurance Company Limited');

-- select * from T8_DEPARTMENT;






-- drop table T8_OFFICE;
-- table 11
CREATE TABLE IF NOT EXISTS T8_OFFICE
(
Office_Name	VARCHAR(20) NOT NULL ,
Office_Leader VARCHAR(20) NOT NULL ,
Contact_Information VARCHAR(20) NOT NULL ,
Address	VARCHAR(20) NOT NULL ,
Admin_Cost INTEGER NULL ,
Staff VARCHAR(50) NULL ,
Department_Name VARCHAR(50) NOT NULL ,
Company_Name VARCHAR(50) NOT NULL ,
CONSTRAINT XPKOFFICE_11 PRIMARY KEY (Office_Name,Department_Name,Company_Name),
CONSTRAINT R_104 FOREIGN KEY (Department_Name, Company_Name) REFERENCES T8_DEPARTMENT (Department_Name, Company_Name)
);
CREATE UNIQUE INDEX XPKOFFICE_11 ON T8_OFFICE (Office_Name ASC,Department_Name ASC,Company_Name ASC);

INSERT INTO T8_OFFICE VALUES
('CABD', 'Sonali', '7654568943', 'Lucknow','170000','80916','Legal Department','ICICI Prudential Vehicle Insurance Company Limited'),
('DCEA', 'Advay', '6545675423', 'Bangalore', '130000','80901','Underwriting Department', 'Bajaj Allianz Vehicle Insurance Company Limited'),
('EFGW', 'Jgrut', '7543445543', 'Bangalore', '140000','80903', 'Underwriting Department', 'Bajaj Allianz Vehicle Insurance Company Limited'), 
('GHIE', 'Mithil', '2356765435', 'Jabalpur', '150000','80904','Reinsurance Department','Canara HSBC Oriental Bank of Commerce LIC Limited'),
('AJKT', 'Niraj','9589026779', 'Mumbai', '220000','80913', 'Underwriting Department', 'Bajaj Allianz Vehicle Insurance Company Limited'), 
('KLMH', 'Akash',  '9875678763', 'Mumbai', '140000','80906', 'Reinsurance Department', 'Canara HSBC Oriental Bank of Commerce LIC Limited'),
('MNON', 'Udit',   '9879543211', 'Pune', '150000','80907', 'Claims Department', 'Birla Sun Vehicle Insurance Company Limited'), 
('OPQZ', 'Bhargava','764166535', 'Mumbai', '160000','80908', 'Actuarial and Statistical Department', 'Shriram Vehicle Insurance Company Limited'),
('QRSF', 'Aniruddha', '9876987652', 'Mumbai', '160000','80909', 'Reinsurance Department', 'Canara HSBC Oriental Bank of Commerce LIC Limited'), 
('STUN', 'Anchan', '6756273891', 'Delhi', '140000','80910', 'Underwriting Department', 'Canara HSBC Oriental Bank of Commerce LIC Limited'), 
('AVWQ', 'Maurya', '770781155', 'Pune', '166000','80911', 'Legal Department','Kotak Vehicle Insurance Company Limited'),
('QXYL', 'Suresh', '9483356733', 'Lucknow', '145000','80912', 'Actuarial and Statistical Department', 'Shriram Vehicle Insurance Company Limited'), 
('VZAZ', 'Ramesh', '9845067456', 'Chennai', '1230000','80913', 'Claims Department', 'Birla Sun Vehicle Insurance Company Limited'),
('QCDB', 'Mithilesh', '9900904357', 'Bangalore', '173000','80914', 'Legal Department','ICICI Prudential Vehicle Insurance Company Limited'),
('DEFM', 'Jagdish', '9090887766', 'Bangalore', '175000','80915', 'Actuarial and Statistical Department', 'Shriram Vehicle Insurance Company Limited'), 
('FGHW', 'Nemade', '9876783678', 'Hyderbad', '134000','80916', 'Reinsurance Department', 'Canara HSBC Oriental Bank of Commerce LIC Limited'),
('HIJL', 'Pranjal', '8987698787', 'Channai', '123000','80917', 'Actuarial and Statistical Department', 'Shriram Vehicle Insurance Company Limited'), 
('JKLP', 'Anvita', '8484884484', 'Kerala', '156000','80918', 'Actuarial and Statistical Department', 'Shriram Vehicle Insurance Company Limited'), 
('LMNQ', 'Aniruddha', '9801111111', 'Delhi', '175000','80908','Underwriting Department', 'Bajaj Allianz Vehicle Insurance Company Limited'),
('NOPG', 'Abhishek', '8780900222', 'Lucknow', '165000','80920', 'Legal Department','Kotak Vehicle Insurance Company Limited');






-- drop table T8_MEMBERSHIP;
-- table 12
CREATE TABLE IF NOT EXISTS T8_MEMBERSHIP
(
Membership_Id VARCHAR(20) NOT NULL ,
Membership_Type	CHAR(15) NOT NULL ,
Organisation_Contact VARCHAR(20) NULL ,
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKMEMBERSHIP_12 PRIMARY KEY (Membership_Id,Cust_Id),
CONSTRAINT R_91 FOREIGN KEY (Cust_Id) REFERENCES T8_CUSTOMER (Cust_Id)
);
CREATE UNIQUE INDEX XPKMEMBERSHIP_12 ON T8_MEMBERSHIP (Membership_Id ASC,Cust_Id ASC);

INSERT INTO T8_MEMBERSHIP VALUES('81201', '812IGT677643', '9422630900', '80101'),
('81202', '812CLL567656', '9422630900', '80102'),
('81203', '812CLL456659', '9422630900', '80103'),
('81204', '812BID345665', '9422630900', '80104'),
('81205', '812CLL345670', '9422630900', '80105'),
('81206', '812IGT346456', '9422630900', '80106'),
('81207', '812BID345987', '9422630900', '80107'),
('81208', '812CLL458698', '9422630900', '80108'),
('81209', '812CLL345487', '9422630900', '80109'),
('81210', '812IGT998098', '9422630900', '80110'),
('81211', '812BID345474', '9422630900', '80111'),
('81212', '812BID886532', '9422630900', '80112'),
('81213', '812CLL765436', '9422630900', '80113'),
('81214', '812CLL234554', '9422630900', '80114'),
('81215', '812CLL345467', '9422630900', '80115'),
('81216', '812CLL595457', '9422630900', '80116'),
('81217', '812BID865456', '9422630900', '80117'),
('81218', '812IGT446536', '9422630900', '80118'),
('81219', '812CLL987654', '9422630900', '80119'),
('81220', '812IGT045456', '9422630900', '80120');




-- drop table T8_VEHICLE_SERVICE;
-- table 13
CREATE TABLE IF NOT EXISTS T8_VEHICLE_SERVICE 
(
Department_Name	VARCHAR(50) NOT NULL , 
Vehicle_Service_Company_Name VARCHAR(50) NOT NULL , 
Vehicle_Service_Address VARCHAR(50) NULL ,
Vehicle_Service_Contact VARCHAR(20) NULL ,
Vehicle_Service_Incharge VARCHAR(50) NULL , 
Vehicle_Service_Type VARCHAR(50) NULL ,
Department_Id VARCHAR(20) NOT NULL , 
Company_Name VARCHAR(100) NOT NULL ,
CONSTRAINT XPKVEHICLE_SERVICE PRIMARY KEY (Vehicle_Service_Company_Name,Department_Name, Company_Name),
CONSTRAINT R_50 FOREIGN KEY (Department_Name, Company_Name) REFERENCES T8_DEPARTMENT (Department_Name, Company_Name)
);
CREATE UNIQUE INDEX XPKVEHICLE_SERVICE ON T8_VEHICLE_SERVICE (Vehicle_Service_Company_Name ASC,Department_Name ASC, Company_Name ASC);

INSERT INTO T8_VEHICLE_SERVICE VALUES
('Underwriting Department','AB','pune','7785462055','advay aggarwal','full-service','81018', 'Bajaj Allianz Vehicle Insurance Company Limited'),
('Claims Department','CD','pune','8854100123', 'kshitiz micheal','half-service','81007','Birla Sun Vehicle Insurance Company Limited'),
('Legal Department','EF','bangalore','7786594265','suresh','full-service','81012',  'HDFC Vehicle Insurance Company Limited'),
('Legal Department','GH','kolkata','885648565','jagrut','half-service','81013', 'ICICI Prudential Vehicle Insurance Company Limited'),
('Legal Department','IJ','delhi','9658445232', 'akash kumar','half-service','81011',  'Exide Vehicle Insurance Company Limited'),
('Legal Department','KL','nagpur','6565854525','udit pal','full-service','81015',  'Kotak Vehicle Insurance Company Limited'),
('Audit Department','MN','oty','9945615045', 'mithil anchan','half-service','81005', 'SBI Vehicle Insurance Company Limited'),
('Agency Department','OP','jaipur','9945110045', 'akarsh maurya','full-service','81002', 'Future Generali India Vehicle Insurance Company Limited'),
('Marketing Department','QR','raipur','8945610045','aniruddha','half-service','81016', 'IDBI Federal Vehicle Insurance Company Limited'),
('Reinsurance Department','ST','solapur','9946610045','bharghav','half-service','81017', 'Canara HSBC Oriental Bank of Commerce LIC Limited'),
('Audit Department','UV','kolapur','9945610040','ram pal','full-service','81004', 'Aegon Vehicle Insurance Company Limited'),
('Legal Department','WX','thane','9945610041','amit','half-service','81010', 'IDBI Federal Vehicle Insurance Company Limited'),
('Investment Department','YZ','udpi','9945610043','binod','full-service','81006', 'IDBI Federal Vehicle Insurance Company Limited'),
('Accounting Department','AA','yeswanthpur', '9945610044','yash sigh','half-service','81001', 'Shriram Vehicle Insurance Company Limited'),
('Actuarial and Statistical Department','BB','hubli','9945610075', 'varsha','full-service','81003', 'Shriram Vehicle Insurance Company Limited'),
('Underwriting Department','CC','dharwad','9945610048', 'riya mishra', 'half-service','81020', 'Shriram Vehicle Insurance Company Limited'),
('Claims Department','DD','chennai','9945610049','kanchan devi', 'half-service','81010', 'IDBI Federal Vehicle Insurance Company Limited'),
('Underwriting Department','EE','lucknow','9945699045', 'dheeraj','full-service','81019', 'Canara HSBC Oriental Bank of Commerce LIC LIMITED');

-- select * from T8_VEHICLE_SERVICE;






-- drop table T8_NOK;
-- table 14
CREATE TABLE IF NOT EXISTS T8_NOK
(
Nok_Id	VARCHAR(20) NOT NULL ,
Nok_Name VARCHAR(20) NULL ,
Nok_Address	VARCHAR(20) NULL ,
Nok_Phone_Number VARCHAR(15) NULL ,
Nok_Gender VARCHAR(8) NULL ,
Nok_Marital_Status CHAR(10) NULL ,
Agreement_id VARCHAR(10) NOT NULL ,
Application_Id VARCHAR(10) NOT NULL ,
Cust_Id	VARCHAR(10) NOT NULL ,
CONSTRAINT XPKNOK_14 PRIMARY KEY (Nok_Id,Agreement_id,Application_Id,Cust_Id),
CONSTRAINT R_99 FOREIGN KEY (Agreement_id, Application_Id, Cust_Id) REFERENCES T8_INSURANCE_POLICY (Agreement_id, Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKNOK_14 ON T8_NOK (Nok_Id ASC,Agreement_id ASC,Application_Id ASC,Cust_Id ASC);

INSERT INTO T8_NOK VALUES 
('81401','Arvind Kejriwal','Hyderabad','9425284125','Male', 'Single','80401' ,'80201' ,'80101'),
 ('81402','Manju K','Bangalore','9425284354','Female', 'Married', '80402', '80202','80102'),
('81403','Anjum Goswami','Pune','9425141254','Female', 'Married', '80403', '80203','80103'),
('81404','Ravindra Jadeja','Mumbai','9425652322','Male', 'Single', '80404', '80204','80104'),
('81405','Yograj Singh','Kolkatta','9425265455','Male', 'Divorced','80405' ,'80205' ,'80105'),
('81406','Meena Baveja','Pune','9425236525','Male', 'Divorced','80406' , '80206','80106'),
('81407','Lata Ganguly','Vadodara','9425321466','Female', 'Single','80407' ,'80207' ,'80107'),
('81408','Dhatri M','Bangalore','9425214552','Female', 'Married','80408' , '80208','80108'),
('81409','Krutika Singh','New Delhi','9425254125','Female', 'Single', '80409','80209' ,'80109'),
('81410','Sachin Tendulkar','Hyderabad','9425214801','Male', 'Single', '80410', '80210','80110'),
('81411','Yasharth Jha','Mumbai','9425154632','Male', 'Married', '80411','80211' ,'80111'),
('81412','Kunal Yadav','Bangalore','9425908561','Male', 'Single', '80412', '80212','80112'),
('81413','Fatima Shiek','Ajmer','9425081126','Male', 'Divorced', '80413','80213' ,'80113'),
('81414','Jaya Suvarna','Chennai','9425796961','Female', 'Single', '80414', '80214','80114'),
('81415','Sandhya J','Chennai','9428026575','Female', 'Single', '80415','80215' ,'80115'),
('81416','Kakashi Hatake','Mumbai','9425463262','Male', 'Married', '80416','80216' ,'80116'),
('81417','Itachi Uchiha','Bhaindar','9425036512','Female', 'Single', '80417','80217' ,'80117'),
('81418','Shwetha DSouza','Bangalore','9425412365','Female', 'Married','80418' , '80218','80118'),
('81419','Bhavana Jindal','Jabalpur','9425201569','Female', 'Single','80419' ,'80219' ,'80119'),
('81420','Bharti Vidya','Mumbai','9428021569','Female', 'Single','80420' ,'80220' ,'80120');   





-- drop table T8_POLICY_RENEWABLE;
-- table 16
CREATE TABLE IF NOT EXISTS T8_POLICY_RENEWABLE
(
Policy_Renewable_Id VARCHAR(20) NOT NULL ,
Date_Of_Renewal	DATE NOT NULL ,
Type_Of_Renewal	CHAR(15) NOT NULL ,
Agreement_id VARCHAR(20) NOT NULL ,
Application_Id VARCHAR(20) NOT NULL ,
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT XPKPOLICY_RENEWABLE_16 PRIMARY KEY(Policy_Renewable_Id,Agreement_id,Application_Id,Cust_Id),
CONSTRAINT R_101 FOREIGN KEY (Agreement_id, Application_Id, Cust_Id) REFERENCES T8_INSURANCE_POLICY (Agreement_id, Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKPOLICY_RENEWABLE_16 ON T8_POLICY_RENEWABLE (Policy_Renewable_Id ASC,Agreement_id ASC,Application_Id ASC,Cust_Id ASC);

INSERT INTO T8_POLICY_RENEWABLE VALUES
    ('81601','2021-10-08', 'Online',  '80401','80201' ,'80101'),
    ('81602','2021-02-08', 'Online',  '80402','80202' ,'80102'),
    ('81603','2021-11-08', 'Offline',  '80403','80203' ,'80103'),
    ('81604','2021-06-08', 'Offline',  '80405','80205' ,'80105'),
    ('81605','2021-02-08', 'Online',  '80407','80207' ,'80107'),
    ('81606','2021-04-08', 'Online',  '80409','80209' ,'80109'),
    ('81607','2021-02-08', 'Online',  '80410','80210' ,'80110'),
    ('81608','2021-02-08', 'Online',  '80413','80213' ,'80113'),
    ('81609','2021-02-08', 'Offline',  '80416','80216' ,'80116'),
    ('81610','2021-07-08', 'Offline',  '80417','80217' ,'80117'),
    ('81611','2021-02-08', 'Online',  '80419','80219' ,'80119');






-- drop table T8_INCIDENT;
-- table 17
CREATE TABLE IF NOT EXISTS T8_INCIDENT 
(
Incident_Id VARCHAR(20) NOT NULL ,
Incident_Type VARCHAR(50) NULL , 
Incident_Date Date NOT NULL , 
Info_of_incident VARCHAR(500) NULL ,
CONSTRAINT XPKINCIDENT_17 PRIMARY KEY (Incident_Id)
);
CREATE UNIQUE INDEX XPKINCIDENT_17 ON T8_INCIDENT (Incident_Id ASC);

INSERT INTO T8_INCIDENT VALUES
('81701', 'Self-ignition', '2020-10-24', "Third-party car insurance coverage will pay for any financial liability and will also from claims arising from a third party when the insured's vehicle is at fault fire, explosion, self-ignition"),
('81702', 'Aggravated Damage', '2020-06-18', 'Aggravated damages are the special and highly exceptional damages awarded on a defendant by a court when his/her conduct amounts to tortious conduct subjecting the plaintiff to humiliating and malicious circumstances'),
('81703', 'Collision Coverage', '2020-12-12','100% of the sum insured is offered on the accidental death of the insured person Reimbursement will be offered for the medical expenses incurred due to an accident. The insurance policy also pays for an education fund for two children in case of death of the insured'),
('81704', 'Drunken Driving', '2020-11-21', 'Driving under the influence of alcohol or drugs is illegal obviously However if you drive drunk and cause a car accident your car insurance policy will pay for damages you cause  up to the liability limits of your policy'),
('81705', 'External Explosion', '2020-11-13', "Most home and contents insurance covers you for damage caused by fire, including bushfire. Generally, a flame has to cause the damage"),
('81706', 'Natural Calamity', '2020-12-21', 'A comprehensive car insurance policy provides coverage against damages or losses caused due to almost all-natural disasters'),
('81707', 'Fire', '2020-03-17', 'Sparks from a tear in the electric wiring systems are not covered in insurance'),
('81708', 'Theft', '2020-01-27', 'Insurers will pay an amount equal to the declared value of the insured bike in case of theft. A report by one of the leading English dailies paint an agonizing picture for two-wheeler owners in India'),
('81709', 'Mechanical Breakdown','2020-02-17','Equipment breakdown coverage. Equipment breakdown coverage is a form of commercial insurance that provides funds to repair or replace damaged machinery or equipment that has suffered a mechanical or electrical failure'),
('81710', 'Auto Liability Coverage', '2020-07-17', 'Liability insurance is a part of the general insurance system of risk financing to protect the purchaser from the risks of liabilities imposed by lawsuits and similar claims and protects the insured if the purchaser is sued for claims that come within the coverage of the insurance policy'),
('81711', 'Weather Damage', '2020-07-19', 'The comprehensive policy will cover various aspects which are outside the purview of the collision of the vehicle'),
('81712', 'Burglar', '2020-06-07', 'Insurers will pay an amount equal to the declared value of the insured bike in case of theft. A report by one of the leading English dailies paint an agonizing picture for two-wheeler owners in India'),
('81713', 'Floods Damage', '2020-01-27', 'Add on the cover called Engine Protection to cover the losses to the engine due to flood water. The Add on is designed to cover damages caused to the car’s engine'),
('81714', 'Personal Injury', '2020-03-14', 'Personal injury protection will cover all the costs associated with the accident'),
('81715', 'Comprehensive Insurance', '2020-12-24', 'provides the minimal required coverage of losses related to a third-party. In addition, comprehensive insurance offers protection from losses or damage to the insured vehicle and injuries to the owner, due to accidents'),
('81716', 'Engine Damage', '2020-08-11', 'The damage of the engine due to various reasons will be replaced when you subscribe to the engine replacement coverage'),
('81717', 'Nuclear Perils', '2020-07-11', 'insurance contract that safeguards the insured against unforeseen contingency caused by an accidental fire, lightning, explosion/implosion, destruction or damage caused by aerial devices, man-made perils'),
('81718', 'Vehicle stops in the middle of the road', '2020-08-19', 'If your vehicle stops in the middle of the road the insurance company will come to your rescue'),
('81719', 'Lightning', '2020-11-22', 'Under The policy of Standard Fire and Special Perils Policy Coverage you can claim the Damage coverages'),
('81720', 'Windshield Damage', '2021-01-28', 'The windshield of your car may break or have a crack as a result of a collision or non-collision. A comprehensive car insurance policy covers all physical damages caused to your car\'s windshield due to collision and non-collision');

-- select * from T8_INCIDENT;









-- drop table T8_INCIDENT_REPORT;
-- table 18
CREATE TABLE IF NOT EXISTS T8_INCIDENT_REPORT
( 
Incident_Report_Id VARCHAR(20) NOT NULL ,
Incident_Type CHAR(50) NULL , 
Incident_Inspector VARCHAR(20) NULL , 
Incident_Cost INTEGER NULL , 
Incident_Report_Description VARCHAR(500) NULL , 
Incident_Id VARCHAR(20) NOT NULL , 
Cust_Id VARCHAR(20) NOT NULL , 
CONSTRAINT XPKINCIDENT_REPORT_18 PRIMARY KEY (Incident_Report_Id,Incident_Id,Cust_Id),
CONSTRAINT R_83 FOREIGN KEY (Incident_Id) REFERENCES T8_INCIDENT (Incident_Id),
CONSTRAINT R_86 FOREIGN KEY (Cust_Id) REFERENCES T8_CUSTOMER (Cust_Id)
);
CREATE UNIQUE INDEX XPKINCIDENT_REPORT_18 ON T8_INCIDENT_REPORT (Incident_Report_Id ASC,Incident_Id ASC,Cust_Id ASC);

INSERT INTO T8_INCIDENT_REPORT  VALUES
('81801', 'Self-ignition', 'Ashok Salian',21000,'Car starts automatically and causing severe fuel drain and power and reducing efficiency more likely mechanical error', '81701', '80101'),
('81802', 'Aggravated damage', 'Karun Nair',17000,'Aggravated damages are the special and highly exceptional damages awarded on a defendant by a court, when his/her conduct amounts to tortious conduct subjecting the plaintiff to humiliating and malicious circumstances', '81702', '80102'),
('81803','Collision Coverage','Amit Ahuja',18000,'due to collision car front part hasbeen damaged','81703','80103'),
('81804','Drunken driving','Aditya Taahid',89000,'drunken driver has hit and caused a severe damage to vechile','81704','80104'),
('81805','External explosion','Marlo Pinto',80000,'due to some cylinder explosion vechile was severly damaged ','81705','80105'),
('81806','Natural calamity','Jaising Jaykar',2500000,'due to natural calamity vechile has been damaged','81706','80106'),
('81807','Fire','Allu Arjun',25000,'due to shortcircuit in wires fire caused almost 50% damage','81707','80107'),
('81808','Theft','Appu Sethia',400000,'some one stole the vehicle','81708','80108'),
('81809','Mechanical breakdown','Parveen Nair',55000,'due to some mechanical breakdown vechile is not working','81709','80109'),
('81810','Auto liability coverage','Narayan Shetty',250000,'vehicle has hit other vehicle(Volvo) and caused damage and  the amount was 2500000(25lac)','81710','80110'),
('81811','Weather damage','Kamlesh Maurya',150000,'due to heavy winds windshield was broken ','81711','80111'),
('81812','Burglar','Pratap Dara',100000,'some parts of the car are robbed','81712','80112'),
('81813','Floods Damage','Jai Gaitonde',1500000,'due to floods in hyderabad  vehicle engine  has been damaged','81713','80113'),
('81814','Personal Injury','Karan Khot',650000,'in accident person was injured severely','81714','80114'),
('81815','Comprehensive Insurance','Kaustub Rane',250000,'comprehensive car insurance is an extensive motor insurance plan that covers the insured person against both, own damages and any third party liabilities','81715','80115'),
('81816','Damage of the engine','Vikram Acharya',55000,'engine was damaged because of accident','81716','80116'),
('81817','Nuclear perils','Ajit Chandila',500000,'due to nuclear explosion vehicle has been damaged','81717','80117'),
('81818', 'Vehicle stops in the middle of the road', 'Varun Mathur',13000,'due to mechanical defects vehicle has stopped in the middle of the road', '81718', '80118'),
('81819','Lightning','Subramaniam Sharma',35000,'due to heavy rain lightning caused damage to vehicle','81719','80119'),
('81820','Windshield damage','Ankur Singhania',16000,'due to accident wind shield has been broken','81720','80120');

-- select * from T8_INCIDENT_REPORT;






-- drop table T8_COVERAGE;
-- table 19
CREATE TABLE IF NOT EXISTS T8_COVERAGE
(
Coverage_Id	VARCHAR(20) NOT NULL ,
Coverage_Amount	INTEGER NOT NULL ,
Coverage_Type	VARCHAR(50) NOT NULL ,
Coverage_Level	CHAR(15) NOT NULL ,
Product_Id	VARCHAR(20) NOT NULL ,
Coverage_Description VARCHAR(200) NULL ,
Covearge_Terms VARCHAR(50) NULL ,
Company_Name VARCHAR(50) NOT NULL ,
CONSTRAINT XPKCOVERAGE_19 PRIMARY KEY(Coverage_Id,Company_Name),
CONSTRAINT R_102 FOREIGN KEY (Company_Name) REFERENCES T8_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKCOVERAGE_19 ON T8_COVERAGE (Coverage_Id ASC,Company_Name ASC);

INSERT INTO T8_COVERAGE VALUES ('81901', '510000', 'Liability', 'HIGH', '82001', 'When accident takes place before your fault', '1 Year', 'Birla Sun Vehicle Insurance Company Limited'),
('81902', '420000', 'Collision', 'HIGH', '82002', 'Bear your car repair expenses after the accident', '8 Months', 'SBI Vehicle Insurance Company Limited'),
('81903', '330000', 'Personal Injury', 'LOW', '82003', 'Personal injury protection will cover all the costs associated with the accident', '8 Months', 'Birla Sun Vehicle Insurance Company Limited'),
('81904', '50000', 'Liability', 'LOW', '82004', 'When accident takes place before your fault', '2 Years', 'SBI Vehicle Insurance Company Limited'),
('81905', '250000', 'Comprehensive', 'LOW', '82005', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', 'SBI Vehicle Insurance Company Limited'),
('81906', '130000', 'Personal Injury', 'HIGH', '82006', 'Personal injury protection will cover all the costs associated with the accident', '13 Months', 'Reliance Vehicle Insurance Company Limited'),
('81907', '190000', 'Liability', 'MEDIUM', '82007', 'When accident takes place before your fault', '18 Months', 'Birla Sun Vehicle Insurance Company Limited'),
('81908', '210000', 'Collision', 'MEDIUM', '82008', 'Bear your car repair expenses after the accident', '15 Months', 'Reliance Vehicle Insurance Company Limited'),
('81909', '450000', 'Medical Payments', 'HIGH', '82009', 'Bear your car repair expenses after the accident', '18 Months', 'Birla Sun Vehicle Insurance Company Limited'),
('81910', '220000', 'Personal Injury', 'LOW', '820010', 'Personal injury protection will cover all the costs associated with the accident', '5 Months', 'Birla Sun Vehicle Insurance Company Limited'),
('81911', '189000', 'Comprehensive', 'LOW', '820011', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', 'Reliance Vehicle Insurance Company Limited'),
('81912', '143000', 'Liability', 'MEDIUM', '820012', 'When accident takes place before your fault', '1 Year', 'Kotak Vehicle Insurance Company Limited'),
('81913', '176000', 'Collision', 'MEDIUM', '82013', 'Bear your car repair expenses after the accident', '1 Months', 'Kotak Vehicle Insurance Company Limited'),
('81914', '453000', 'Liability', 'HIGH', '82014', 'When accident takes place before your fault', '3 Years', 'SBI Vehicle Insurance Company Limited'),
('81915', '587000', 'Medical Payments', 'MEDIUM', '82015', 'When accident takes place before your fault', '1 Year', 'SBI Vehicle Insurance Company Limited'),
('81916', '553000', 'Liability', 'MEDIUM', '82016', 'When accident takes place before your fault', '18 Months', 'Birla Sun Vehicle Insurance Company Limited'),
('81917', '444000', 'Comprehensive', 'LOW', '82017', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', 'Kotak Vehicle Insurance Company Limited'),
('81918', '567000', 'Comprehensive', 'LOW', '82018', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', 'Kotak Vehicle Insurance Company Limited'),
('81919', '122000', 'Medical Payments', 'HIGH', '82019', 'When accident takes place before your fault', '15 Months', 'Kotak Vehicle Insurance Company Limited'),
('81920', '21000', 'Collision', 'LOW', '82020', 'Bear your car repair expenses after the accident', '1 Year', 'Birla Sun Vehicle Insurance Company Limited');






-- drop table T8_PRODUCT;
-- table 20
CREATE TABLE IF NOT EXISTS T8_PRODUCT
(
Product_Number VARCHAR(20) NOT NULL ,
Product_Price INTEGER NULL ,
Product_Type VARCHAR(30) NULL ,
Company_Name VARCHAR(50) NOT NULL ,
CONSTRAINT XPKPRODUCT_20 PRIMARY KEY (Product_Number,Company_Name),
CONSTRAINT R_107 FOREIGN KEY (Company_Name) REFERENCES T8_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKPRODUCT_20 ON T8_PRODUCT (Product_Number ASC,Company_Name ASC);

INSERT INTO T8_PRODUCT VALUES
('82001', '25000','Bike Insurance/Two Wheeler','Birla Sun Vehicle Insurance Company Limited' ),
('82002', '120000','Car Insurance', 'Aegon Vehicle Insurance Company Limited'),
('82003', '20000','Two Wheeler-Economy','Kotak Vehicle Insurance Company Limited' ),
('82004', '80000','Car Insurance-Economy','Birla Sun Vehicle Insurance Company Limited' ),
('82005', '90000','Two Wheeler-Luxury', 'DLF Pramerica Vehicle Insurance Company Limited'),
('82006', '200000','Car Insurance-Luxury', 'Max Vehicle Insurance Company Limited'),
('82007', '4000','Two Wheeler- Topup', 'Birla Sun Vehicle Insurance Company Limited'),
('82008', '1000','Two Wheeler- Topup Economy','SBI Vehicle Insurance Company Limited'),
('82009', '10000','Car Insurance-Topup', 'SBI Vehicle Insurance Company Limited'),
('82010', '25000','Bike Insurance/Two Wheeler', 'Canara HSBC Oriental Bank of Commerce LIC Limited'),
('82011', '25000','Bike Insurance/Two Wheeler','Birla Sun Vehicle Insurance Company Limited'),
('82012', '25000','Bike Insurance/Two Wheeler', 'SBI Vehicle Insurance Company Limited'),
('82013', '25000','Bike Insurance/Two Wheeler', 'Kotak Vehicle Insurance Company Limited'),
('82014', '25000','Bike Insurance/Two Wheeler', 'Birla Sun Vehicle Insurance Company Limited'),
('82015', '25000','Bike Insurance/Two Wheeler', 'Aviva Vehicle Insurance Company Limited'),
('82016', '50000','Car Insurance', 'Bharti AXA Vehicle Insurance Company Limited');





-- drop table T8_RECEIPT;
-- table 21
CREATE TABLE IF NOT EXISTS T8_RECEIPT 
(
Receipt_Id VARCHAR(20) NOT NULL , 
Time_rec DATE NOT NULL ,
Cost INTEGER NOT NULL ,
Premium_Payment_Id VARCHAR(20) NOT NULL , 
Cust_Id	VARCHAR(20) NOT NULL ,
CONSTRAINT  XPKRECEIPT_21 PRIMARY KEY(Receipt_Id,Premium_Payment_Id,Cust_Id),
CONSTRAINT R_84 FOREIGN KEY (Premium_Payment_Id, Cust_Id) REFERENCES T8_PREMIUM_PAYMENT(Premium_Payment_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKRECEIPT_21 ON T8_RECEIPT (Receipt_Id ASC,Premium_Payment_Id ASC,Cust_Id ASC);

INSERT INTO T8_RECEIPT VALUES
 (82101, '2020-02-08' , 50000 , 80501 , 80101 ),
 (82102, '2017-04-01' , 42000 , 80502 , 80102 ),
 (82103, '2020-06-08' , 42000,  80503 , 80103 ),
 (82104, '2014-09-29' , 40000 , 80504 , 80104 ),
 (82105, '2019-07-04' , 42000,  80505 , 80105 ),
 (82106, '2020-12-09' , 70000 , 80506 , 80106 ),
 (82107, '2020-10-23' , 78000,  80507 , 80107 ),
 (82108, '2019-05-29' , 60000 , 80508 , 80108 ),
 (82109, '2016-11-06' ,  36000, 80509 , 80109 ),
 (82110, '2020-09-08' , 68000 , 80510 , 80110 ),
 (82111, '2020-07-10' , 32000 , 80511 , 80111 ),
 (82112, '2018-12-10' , 34000 , 80512 , 80112 ),
 (82113, '2017-01-02' , 38000,  80513 , 80113 ),
 (82114, '2018-11-10' , 40000 , 80514 , 80114 ),
 (82115, '2019-02-09' , 55000, 80515 , 80115 ),
 (82116, '2018-10-06' , 58000, 80516 , 80116 ),
 (82117, '2018-04-28' , 50000, 80517 , 80117 ),
 (82118, '2020-06-11' , 62000, 80518 , 80118 ),
 (82119, '2017-03-03' , 84000, 80519 , 80119 );
 -- ( 82120, '2016-05-04' , 40000, 80520 , 80120 ); 





-- drop table T8_INSURANCE_POLICY_COVERAGE;
-- table 22
CREATE TABLE IF NOT EXISTS T8_INSURANCE_POLICY_COVERAGE
(
Agreement_Id VARCHAR(20) NOT NULL ,
Application_Id VARCHAR(20) NOT NULL ,
Cust_Id	VARCHAR(20) NOT NULL ,
Coverage_Id	VARCHAR(20) NOT NULL ,
Company_Name VARCHAR(50) NOT NULL ,
CONSTRAINT XPKINSURANCE_POLICY_4_COVERAGE PRIMARY KEY (Agreement_id,Application_Id,Cust_Id,Coverage_Id,Company_Name),
CONSTRAINT R_97 FOREIGN KEY (Agreement_id, Application_Id, Cust_Id) REFERENCES T8_INSURANCE_POLICY (Agreement_id, Application_Id, Cust_Id),
CONSTRAINT R_98 FOREIGN KEY (Coverage_Id, Company_Name) REFERENCES T8_COVERAGE (Coverage_Id, Company_Name)
);
CREATE UNIQUE INDEX XPKINSURANCE_POLICY_4_COVERAGE ON T8_INSURANCE_POLICY_COVERAGE (Agreement_id ASC,Application_Id ASC,Cust_Id ASC,Coverage_Id ASC,Company_Name ASC);

INSERT INTO T8_INSURANCE_POLICY_COVERAGE VALUES
    ( '80401','80201', '80101',81901,"Birla Sun Vehicle Insurance Company Limited"), 
    ( '80402','80202', '80102',81902,"SBI Vehicle Insurance Company Limited"),
    ( '80403','80203', '80103',81903,"Birla Sun Vehicle Insurance Company Limited"),
    ( '80404','80204', '80104',81904,"SBI Vehicle Insurance Company Limited"),
    ( '80405','80205', '80105',81905,"SBI Vehicle Insurance Company Limited"),
    ( '80406','80206', '80106',81906,"Reliance Vehicle Insurance Company Limited"),
    ( '80407','80207', '80107',81907,"Birla Sun Vehicle Insurance Company Limited"),
    ( '80408','80208', '80108',81908,"Reliance Vehicle Insurance Company Limited"),
    ( '80409','80209', '80109',81909,"Birla Sun Vehicle Insurance Company Limited"),
    ( '80410','80210', '80110',81910,"Birla Sun Vehicle Insurance Company Limited"),
    ( '80411','80211', '80111',81911,"Reliance Vehicle Insurance Company Limited"),
    ( '80412','80212', '80112',81912,"Kotak Vehicle Insurance Company Limited"),
    ( '80413','80213', '80113',81913,"Kotak Vehicle Insurance Company Limited"),
    ( '80414','80214', '80114',81914,"SBI Vehicle Insurance Company Limited"),
    ( '80415','80215', '80115',81915,"SBI Vehicle Insurance Company Limited"),
    ( '80416','80216', '80116',81916,"Birla Sun Vehicle Insurance Company Limited"),
    ( '80417','80217', '80117',81917,"Kotak Vehicle Insurance Company Limited"),
    ( '80418' ,'80218', '80118',81918,"Kotak Vehicle Insurance Company Limited"),
    ( '80419' ,'80219', '80119',81919,"Kotak Vehicle Insurance Company Limited"),
    ( '80420','80220', '80120',81920,"Birla Sun Vehicle Insurance Company Limited");




        
        
        

        
     
     
     



    
    
    
    
   
    
    
    
    
   

        