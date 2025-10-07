/*
Project to creat a database for a car wash company

CUSTOMER (cus_id, cus_name, cus_email, cus_phn)
CAR (reg_num, cus_id*, make, model, manufecture_date)
SERVICES (serv_id, cus_id*, reg_num*, drp_off_date, drp_of_time, desc, mileage, next_serv)
MECHANIC (emp_id, serv_id*, ename, e_phn, time_spent, grade)


*/










CREATE DATABASE CarWash;
USE CarWash;



DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS CAR;
DROP TABLE IF EXISTS SERVICES;




--
-- Table structure for table CUSTOMER(cus_id, cus_name, cus_email, cus_phn)
--

CREATE TABLE CUSTOMER (
  cus_id char(10) NOT NULL,
  cus_name varchar(20) NOT NULL,
  cus_email varchar(50),
  cus_phn char(15),
  CONSTRAINT pk_CUSTOMER PRIMARY KEY(cus_id)
);

--
-- Dumping data for table CUSTOMER(cus_id, cus_name, cus_email, cus_phn)
--

INSERT INTO CUSTOMER(cus_id, cus_name, cus_email, cus_phn) VALUES
('D13-101', 'Bette Davis', 'bette.davis@ulster.ac.uk', '41728003'),
('D13-203', 'Cary Grant', 'bigcary@yahoo.com', '+44417654321'),
('D13-42', 'Humphrey Bogart', 'bogieh@gmail.com', '07782751839'),
('D13-R93', 'John Wayne', NULL, '02890112233'),
('D14-38', 'Katharine Hepburn', 'kath_hep29@hotmail.com', NULL),
('D17-022', 'Marilyn Monroe', 'marilyn@hotmail.com', '+88487618356732'),
('D17-080', 'Orson Welles', 'welles.orson@ulster.ac.uk', '08998736126'),
('R180-05', 'Vivien Leigh', 'viv.leigh38@gmail.com', '02890289675'),
('D13-51', 'Ingrid Bergman', 'IngridB@hotmail.com', '66419887654'),
('D13-306', 'William Holden', 'billyho66@yahoo.com', '+38198322843'),
('L231-12', 'Rita Hayworth', 'ritah99@outlook.com', '077709873980'),
('D13-R45', 'James Stewart', 'jimmy_stew@qub.ac.uk', '08770987654'),
('D14-025', 'James Dean', 'deenj@outlook.com', '+447780276405'),
('D14-16', 'Rock Hudson', 'rockyh@hotmail.com', NULL),
('D14-V17', 'Tony Curtis', 't.curtis@yahoo.com', NULL),
('L231-47', 'Elvis Presley', 'elvisp@yahoo.com', NULL),
('L231-05', 'Burt Lancaster', NULL, '+447781904569'),
('D17-945', 'Frank Sinatra', NULL, '08870286004'),
('D17-043', 'Deborah Kerr', NULL, '02890672593'),
('R180-61', 'Elizabeth Taylor', NULL, '+442891785397'),
('R180-32', 'Susan Hayward', 'susan.hayward@yahoo.com', NULL),
('D17-R14', 'Lana Turner', 'lana.turner@yahoo.com', NULL),
('L231-44', 'Omar Sharif', 'sharifo18@hotmail.com', '00447880708090'),
('D14-37', 'Natalie Wood', 'nattiewood@outlook.com', NULL),
('D14-V77', 'Doris Day', 'd.day67@hotmail.com', '+4478779297611'),
('D13-R71', 'Sean Connery', 'connery.sean007@outlook.com', NULL);




-- --------------------------------------------------------

--
-- Table structure for EMPLOYEE
--

CREATE TABLE EMPLOYEE (
  e_id char(5) NOT NULL,
  ename varchar(50) NOT NULL,
  ephn char(15),
  grade varchar(20),
  CONSTRAINT pk_MECHANIC PRIMARY KEY(e_id)
);

--
-- Dumping data for table MECHANIC(e_id, ename, ephn, grade)
--

INSERT INTO EMPLOYEE(e_id, ename, ephn, grade) VALUES
('E9274', 'Tim Berners-Lee', '+442890469927', 'Trainee'),
('E1037', 'Edgar F. Codd', '07882751331', 'Mechanic'),
('E7291', 'Tony Hoare', '+44717689275', 'Apprentice'),
('E4470', 'Ada Lovelace', '07811304671', 'Mechanic'),
('E2045', 'Grace Hopper', '+447880496206', 'Apprentice'),
('E0392', 'Edsger Dijkstra', '07751839368', 'Senior Mechanic'),
('E2648', 'Alan Turing', '02890568482', 'Apprentice');


-- --------------------------------------------------------

--
-- Table structure for table CAR
--

CREATE TABLE CAR (
  reg char(10) NOT NULL,
  make varchar(20),
  model varchar(20),
  manu_date DATE,
  cus_id char(10),
  CONSTRAINT pk_CAR PRIMARY KEY(reg),
  FOREIGN KEY(cus_id) REFERENCES CUSTOMER(cus_id)
);

--
-- Dumping data for table CAR(reg, make, model, manu_date, cus_id)
--

INSERT INTO CAR (reg, make, model, manu_date, cus_id) VALUES
('BJI 111', 'Vauxhall', 'Astra', '2016-07-02', 'D13-101'),
('AF56 WWJ', 'Volkswagen', 'Golf', '2014-05-25', 'D13-203'),
('LV59 OTP', 'Volkswagen', 'Polo', '2015-06-30', 'D13-42'),
('SEZ 5629', 'Skoda', 'Superb', '2009-11-26', 'D13-R93'),
('MEZ 8086', 'Subaru', 'Impreza', '2017-10-15', 'D14-38'),
('GRZ 6511', 'Subaru', 'Outback', '2018-04-01', 'D17-022'),
('DCZ 1844', 'Nissan', 'Qashqai Visia', '2008-03-13', 'D17-080'),
('VIM 8955', 'Skoda', 'Superb', '2016-10-14', 'R180-05'),
('OEZ 1872', 'Alfa Romeo', 'Alfasud', '2014-09-22', 'D13-101'),
('D268 YCF', 'Audi', 'A8 TFSI e', '2020-02-07', 'D13-51'),
('CJ16 WED', 'Vauxhall', 'Corsa-e', '2020-01-27', 'D13-306'),
('W85 TTF', 'Nissan', 'Micra', '2017-12-12', 'D17-022'),
('LLZ 9362', 'Volkswagen', 'Golf', '2018-08-30', 'D13-306'),
('WVG 673', 'Volvo', 'V90', '2019-12-13', 'D17-080'),
('R99 YRK', 'BMW', '6 Series Gran Coupe', '2019-11-04', 'L231-12'),
('T779 OLI', 'Ford', 'Fiesta 1.25 Zetec', '2016-03-16', 'D13-R45'),
('BEZ 8826', 'Toyota', 'Corolla', '2015-05-26', 'D13-51'),
('G5 T77', 'Dacia', 'Duster', '2017-09-19', 'D13-306'),
('STR 9378', 'Skoda', NULL, NULL, 'D14-025'),
('F6 Y886', 'Skoda', 'Superb', '2018-12-14', 'D14-16'),
('YR3 67', 'Vauxhall', 'Corsa-e', '2019-06-27', 'D14-V17'),
('DYR 87', 'Toyota', 'Corolla', '2016-03-26', 'L231-47'),
('SWT 9930', 'Dacia', 'Duster', '2018-02-15', 'L231-05'),
('D89 Y6', 'Alfa Romeo', 'Alfasud', '2016-09-02', 'D17-945'),
('Y4 T87', 'Subaru', 'Impreza', '2017-11-05', 'D17-043'),
('JEZ 7719', 'Dacia', NULL, NULL, 'R180-61'),
('MEW 783', 'Ford', 'Focus', '2017-09-19', 'R180-32'),
('JEA 991', 'Volvo', 'V70', '2018-10-13', 'D17-R14'),
('B56 Y34', 'Vauxhall', 'Astra', '2017-07-22', 'L231-44'),
('FET 6821', 'Nissan', 'Qashqai Visia', '2018-09-13', 'D14-37'),
('B82 T56', 'Skoda', 'Superb', '2017-10-19', 'D14-V77'),
('CEZ 563', 'Volkswagen', 'Golf', NULL, 'D13-R71');


-- --------------------------------------------------------

--
-- Table structure for table SERVICES
--

CREATE TABLE SERVICES (
  ser_id char(10) NOT NULL,
  reg char(10) NOT NULL,
  e_id char(5),
  time_spent TIME,
  drp_off_date DATE,
  drp_off_time TIME,
  work_req varchar(255),
  mileage INT,
  next_ser DATE,
  PRIMARY KEY (ser_id,reg),
  FOREIGN KEY(reg) REFERENCES CAR(reg),
  FOREIGN KEY(e_id) REFERENCES EMPLOYEE(e_id)
);

--
-- Dumping data for table SERVICES
--

INSERT INTO SERVICES (ser_id, reg, e_id, time_spent, drp_off_date, drp_off_time, work_req, mileage, next_ser) VALUES
('S2006-101', 'BJI 111', 'E9274', '03:15', '2020-06-17', '08:30:00', 'MOT check-up', 45461, '2021-06-21'),
('S2006-102', 'AF56 WWJ', 'E7291', '04:00', '2020-06-17', '14:30:00', 'MOT check-up', 75712, '2021-06-20'),
('S2006-103', 'LV59 OTP', 'E2045', '03:30', '2020-06-17', '08:00:00', 'Other - Wheel bearing - front passengers side', 49904, '2021-06-18'),
('S2006-104', 'SEZ 5629', 'E9274', '02:25', '2020-06-17', '07:30:00', 'Other - Not going into third gear. All other gears are okay.', 135312, '2021-06-21'),
('S2006-105', 'MEZ 8086', 'E2045', '04:20', '2020-06-17', '08:15:00', 'Annual service', 31446, '2021-06-19'),
('S2006-106', 'GRZ 6511', 'E9274', '05:20', '2020-06-18', '16:30:00', 'Other - Rattle in the front suspension', 21043, '2021-06-21'),
('S2006-107', 'DCZ 1844', 'E9274', '01:15', '2020-06-18', '08:30:00', 'MOT check-up', 142958, '2021-06-18'),
('S2006-108', 'VIM 8955', 'E2648', '03:35', '2020-06-18', '08:00:00', 'MOT check-up', 25077, '2021-06-19'),
('S2006-109', 'OEZ 1872', 'E7291', '04:25', '2020-06-19', '08:30:00', 'Other - Oil leak - looks major', 85602, '2021-06-21'),
('S2006-110', 'D268 YCF', 'E2648', '02:15', '2020-06-19', '08:45:00', 'Other - Loses power going up hills. Can not go over 50 mph', 9362, '2021-06-21'),
('S2006-111', 'CJ16 WED', 'E2045', '05:00', '2020-06-19', '08:30:00', 'Other - Air conditioning not working', 5903, '2021-06-19'),
('S2006-112', 'W85 TTF', 'E2045', '01:45', '2020-06-19', '08:30:00', 'Other - Grinding noise from the brakes and whirring noise from the front.', 34943, '2021-06-23'),
('S2006-113', 'LLZ 9362', 'E7291', '03:30', '2020-06-19', '08:30:00', 'Annual service', 15033, '2021-06-21'),
('S2006-114', 'WVG 673', 'E7291', '03:15', '2020-06-20', '16:45:00', 'Other - high pitched whistling noise coming from the front.', 7034, '2021-06-21'),
('S2006-115', 'R99 YRK', 'E9274', '05:35', '2020-06-20', '08:30:00', 'Other - Filled with diesel - should have been petrol! Will need collected.', 4766, NULL),
('S2006-116', 'T779 OLI', 'E2045', '03:45', '2020-06-20', '12:30:00', 'MOT check-up', 21641, '2021-06-22'),
('S2006-117', 'BEZ 8826', 'E7291', '01:15', '2020-06-20', '08:15:00', 'Other - Front tyres are wearing away on the inside. Wire is showing.', 94006, '2021-06-20'),
('S2006-118', 'G5 T77', 'E9274', '03:20', '2020-06-22', '08:30:00', 'Annual service', 42743, '2021-06-24'),
('S2006-119', 'SEZ 5629', 'E9274', '02:35', '2020-06-22', '08:30:00', 'Other - Same problem as before - worked for a while, but now not going into first or third gear.', 135394, '2021-06-21'),
('S2006-120', 'STR 9378', 'E2648', '03:30', '2020-06-22', '10:30:00', 'MOT check-up', 63092, '2021-06-22'),
('S2006-121', 'F6 Y886', 'E2045', NULL, '2020-06-23', '08:30:00', 'Annual service', 18932, '2021-06-25'),
('S2006-122', 'YR3 67', 'E7291', NULL, '2020-06-23', '09:00:00', 'Annual service', 11037, '2021-06-25'),
('S2006-123', 'DYR 87', 'E2648', NULL, '2020-06-23', '16:15:00', 'MOT check-up', 48841, '2021-06-23'),
('S2006-124', 'SWT 9930', 'E9274', NULL, '2020-06-23', '08:30:00', 'Annual service', 20026, '2021-06-24'),
('S2006-125', 'D89 Y6', 'E2648', NULL, '2020-06-25', '12:15:00', 'MOT check-up', 31604, NULL),
('S2006-126', 'Y4 T87', NULL, NULL, '2020-06-24', '08:15:00', 'Other - front suspension has collapsed.', 36480, NULL),
('S2006-127', 'JEZ 7719', 'E7291', NULL, '2020-06-24', '08:30:00', 'MOT check-up', 84629, '2021-06-24'),
('S2006-128', 'MEW 783', NULL, NULL, '2020-06-24', '08:00:00', 'Other - Power steering not working. Very hard to turn the steering wheel.', 22030, '2020-12-09'),
('S2006-129', 'JEA 991', 'E2045', NULL, '2020-06-24', '14:30:00', 'Annual service', 11729, '2020-06-25'),
('S2006-130', 'B56 Y34', 'E9274', NULL, '2020-06-24', '08:00:00', 'Annual service', 51815, '2020-06-13'),
('S2006-131', 'FET 6821', 'E2648', NULL, '2020-06-25', '07:45:00', 'Annual service', 18037, '2020-06-30'),
('S2006-132', 'B82 T56', NULL, NULL, '2020-06-25', '08:15:00', 'Other - none of the lights are working', 37104, NULL),
('S2006-133', 'CEZ 563', 'E7291', NULL, '2020-06-25', '16:30:00', 'MOT check-up', 71402, '2021-06-25'),
('S2006-134', 'AF56 WWJ', NULL, NULL, '2020-06-25', '08:30:00', 'Other - Car not starting', 76537, '2021-06-20'),
('S2006-135', 'SEZ 5629', NULL, NULL, '2020-06-25', '14:30:00', 'Other - Now there are grinding sounds from gearbox!!!', 135576, '2021-06-21');


-- --------------------------------------------------------
