--Ximan Liu
--CSC 452
--prog3a


DROP TABLE ZIPCODES;
DROP TABLE CUSTOMERS;
DROP TABLE EMPLOYEES;


CREATE TABLE ZIPCODES(
ZIP NUMBER(5) NOT NULL PRIMARY KEY,
CITY VARCHAR2(20) NOT NULL);


CREATE TABLE CUSTOMERS(
CNO NUMBER(4) NOT NULL PRIMARY KEY,
CNAME VARCHAR2(10) NOT NULL,
STREET VARCHAR2(20) NOT NULL,
ZIP NUMBER(5) NOT NULL,
PHONE VARCHAR2(12) NOT NULL);


CREATE TABLE EMPLOYEES(
ENO NUMBER(4) NOT NULL PRIMARY KEY,
ENAME VARCHAR2(10) NOT NULL,
ZIP NUMBER(5) NOT NULL,
HDATE DATE NOT NULL);
