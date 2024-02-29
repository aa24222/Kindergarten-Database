# Task 2 create database by Ayesha Afia
DROP DATABASE IF EXISTS P3_A1_Afia_Ayesha;
CREATE DATABASE IF NOT EXISTS P3_A1_Afia_Ayesha;
USE P3_A1_Afia_Ayesha;


SHOW DATABASES;
SHOW TABLES;
 # TASK 3 CREATE TABLES by Ayesha Afia
 
 
 CREATE TABLE CLASS(
CODE CHAR(2) PRIMARY KEY,
 LEVEL VARCHAR (10) NOT NULL,
 COLOR VARCHAR(10) NOT NULL,
 ROOM INT NOT NULL UNIQUE,
 PHONE CHAR(12) NOT NULL UNIQUE,
 CAPACITY INT NOT NULL,
 LOCATION VARCHAR(100)
 );
 
CREATE TABLE STUDENT(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(30) NOT NULL,
MIDDLE_NAME VARCHAR(30),
LAST_NAME VARCHAR(30) NOT NULL,
NICKNAME VARCHAR(15),
DOB DATE NOT NULL,
STREET VARCHAR(50) NOT NULL,
CITY VARCHAR(25) NOT NULL,
ZIPCODE VARCHAR(10) NOT NULL,
CLASS_CODE CHAR(2) NOT NULL REFERENCES CLASS(CODE)
);
CREATE TABLE TEACHER(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(30) NOT NULL,
MIDDLE_NAME VARCHAR(30),
LAST_NAME VARCHAR(30) NOT NULL,
HOME_PHONE CHAR(12) NOT NULL,
WORK_PHONE CHAR(12) NOT NULL,
DOB DATE NOT NULL,
WORK_EMAIL VARCHAR(30) NOT NULL,
PERSONAL_EMAIL VARCHAR(30) NOT NULL,
DEGREE CHAR(5) NOT NULL,
DEGREE_AREA VARCHAR(30) NOT NULL
);
CREATE TABLE PARENT(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(30) NOT NULL,
MIDDLE_NAME VARCHAR(30),
LAST_NAME VARCHAR(30) NOT NULL,
HOME_PHONE CHAR(12) NOT NULL,
WORK_PHONE CHAR(12) NOT NULL,
DOB DATE NOT NULL,
WORK_EMAIL VARCHAR(30) NOT NULL,
PERSONAL_EMAIL VARCHAR(30) NOT NULL,
RELATIONSHIP VARCHAR(30) NOT NULL
);

#TASK 4 ADD DATA BY AYESHA AFIA
INSERT INTO CLASS VALUES('GT', 'Turtles', 'Green', '25', '111-999-0000', '27', 'North West'),
('GF', 'Foxes', 'Green', '26', '222-000-1111', '25', 'West'),
('GM', 'Monkeys', 'Green', '27', '333-000-2222', '31', 'South East'),
('RF', 'Foxes', 'Red', '28', '444-555-6600', '29', 'East'),
('RT', 'Turtles', 'Red', '29', '999-999-9999', '27', 'South West'),
('RM', 'Monkeys', 'Red', '30', '000-111-2222', '26', 'South'),
('BM', 'Monkeys', 'Blue', '31', '555-888-2222', '30', 'North'),
('BF', 'Foxes', 'Blue', '32', '777-777-7777', '28', 'North East'),
('BT', 'Turtles', 'Blue', '33', '888-999-8888', '26', 'Mid West');

INSERT INTO STUDENT VALUES('1', 'John', 'Michael', 'Doe', NULL, '2016-03-25', 'King', 'Colombia', '20101', 'SC', 'RT'),
('2', 'Jane', NULL, 'Smith', NULL, '2016-04-25', 'Main', 'Charleston', '20101', 'SC', 'GT'),
('3', 'John', NULL, 'Williams', 'JP', '2016-05-25', 'Dave', 'Colmbia', '20101', 'SC', 'GT'),
('4', 'Katie', 'Kasie', 'Maroney', 'Kat', '2016-06-25', 'Davis', 'River', '21102', 'SC', 'GM'),
('5', 'Cameron', 'Roderick', 'Johnson', 'Cam', '2016-07-25', 'Amanda', 'Middleburg', '21102', 'SC', 'BT'),
('6', 'Kevin','Michael', 'Carlson', NULL, '2016-08-25', 'Walney', 'Middleburg', '21100', 'SC', 'BM'),
('7', 'Christine', 'Alexa', 'Doe', NULL, '2016-09-25', 'King', 'Colombia', '20101', 'SC', 'GM'),
('8', 'Justin', 'Robert', 'Fields', NULL, '2016-10-25', 'Queen', 'Charleston', '21110', 'SC', 'RM'),
('9', 'Charles', 'Jack', 'Donovan', 'Charlie', '2016-11-25', 'Rainwater', 'McLean', '29900', 'VA', 'GF'),
('10', 'Alexander', 'Alfred', 'Doe', NULL, '2016-12-25', 'Hogan', 'Falls', '20105', 'SC', 'BF'),
('11', 'Samantha', NULL, 'Ackerman', 'Sam', '2016-03-25', 'Kline', 'River', '20101', 'SC', 'RF'),
('12', 'Elizabeth', 'Katherine', 'Lemon', 'Liz', '2016-01-25', 'Link', 'Halifax', '20101', 'SC', 'BT');

INSERT INTO TEACHER VALUES('100', 'Matthew', 'Johson', NULL, 'MJ@mial.com', NULL, 'South Carolina University', 'Math', 'GT', 'BA MATH'),
('101', 'Mary', 'Doe', NULL, 'MD@mial.com', NULL, 'North Carolina University', 'English', 'GF', 'BA ENGLISH'),
('102', 'John', 'Smith', NULL, 'JS@mial.com', NULL, 'Penn State University ', 'History', 'GM', 'BA HISTORY'),
('103', 'Amanda', 'Grey', NULL, 'AG@mial.com', NULL, 'Duke University', 'Biology', 'RF', 'BS BIOLOGY'),
('104', 'Shane', 'Austin', NULL, 'SA@mial.com', NULL, 'Virginia University', 'Chemistry', 'RT', 'MS CHEMISTRY'),
('105', 'Dorris', 'Johson', NULL, 'DJ@mial.com', NULL, 'John Hopkins University', 'Psychology', 'RM', 'PhD PSYCHOLOGY (Child Psychology)'),
('106', 'Stephanie', 'Miller', NULL, 'SM@mial.com', NULL, 'Jame Hawkins University', 'Sociology', 'BM', 'BA SOCIOLOGY'),
('107', 'William', 'Meadow', NULL, 'WM@mial.com', NULL, 'Radford University', 'Math', 'BF', 'BA MATH'),
('108', 'Katie', 'Nolan', NULL, 'KN@mial.com', NULL, 'Rutgers University', 'Community Health', 'BT', 'BS Community Health');

INSERT INTO PARENT VALUES('200', 'Michael', 'Doe', NULL, '899-999-0000', NULL, 'MDOE@mial.com', 'Father'),
('201', 'Kelly', 'Smith', NULL, '999-999-1000', NULL, 'KS@mial.com', 'Mother'),
('202', 'Daryl', 'Smith', NULL, '799-999-2000', NULL, 'DS@mial.com', 'Father'),
('203', 'Justin', 'Williams', NULL, '123-456-7890', NULL, 'JW@mial.com', 'Father'),
('204', 'Kevin', 'Maroney', NULL, '234-567-8901', NULL, 'KME@mial.com', 'Father'),
('205', 'Mary', 'Johson', NULL, '345-999-5000', NULL, 'MJO@mial.com', 'Mother'),
('206', 'Michael', 'Johnson', NULL, '688-999-6000', NULL, 'MMMJ@mial.com', 'Father'),
('207', 'Hope', 'Carlson', NULL, '999-999-7000', NULL, 'HC@mial.com', 'Mother'),
('208', 'Rachel', 'Doe', NULL, '449-999-8000', NULL, 'RDOE@mial.com', 'Mother'),
('209', 'Brianna', 'Fields', NULL, '199-999-9000', NULL, 'BF@mial.com', 'Mother'),
('210', 'Leslie', 'Donovan', NULL, '299-999-1100', NULL, 'LD@mial.com', 'Mother'),
('211', 'Alfred', 'Doe', NULL, '399-999-1200', NULL, 'ADOE@mial.com', 'Father'),
('212', 'Don', 'Lemon', NULL, '699-999-1300', NULL, 'DL@mial.com', 'Father'),
('213', 'Michelle', 'Lemon', NULL, '099-999-1400', NULL, 'ML@mial.com', 'Mother'),
('214','Joseph', 'Ackerman', NULL, '222-333-0000', NULL, 'JA@mial.com', 'Father');

#TASK 5 QUERY DATA BY AYESHA AFIA
SELECT * FROM CLASS;
SELECT * FROM STUDENT;
SELECT * FROM TEACHER;
SELECT * FROM PARENT;

select concat(student.first_name, ' ',if(isnull(student.middle_name), '', student.middle_name),' ' ,if(isnull(student.last_name), '', student.last_name)) as Student_Name, level, color, concat(teacher.first_name, ' ', teacher.last_name) as Teacher_Name from student left join class on student.class_code = class.code left join teacher on class.code = teacher.class_code order by Student_Name asc;
select class.level, class.color, concat(student.first_name, ' ',if(isnull(student.middle_name), '', student.middle_name),' ' ,if(isnull(student.last_name), '', student.last_name)) as Student_Name from class join student on class.code = student.class_code order by color, first_nam;
select parent.first_name as Parent_Name, parent.email, student.first_name as Student_Name, class.level, class.color from student join class on student.class_code = class.code join assignment on student.student_id = assignment.student_student_id join parent on assignment.parent_parent_id  = parent.parent_id order by parent.first_name; 
select teacher.first_name as Teacher_Name, student.first_name as Student_Name, parent.FIRST_NAME as Parent_Name from teacher join class on teacher.class_code = class.code join student on class.code = student.class_code join parent order by teacher.first_name, student.first_name, parent.first_name;