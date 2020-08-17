--Ximan Liu
--CSC452
--Final Project
--Q2.sql

DROP TRIGGER INSERT_CUSTOMER_SHADOW;

CREATE OR REPLACE TRIGGER INSERT_CUSTOMER_SHADOW
AFTER INSERT ON CUSTOMER
FOR EACH ROW
BEGIN
INSERT INTO CUSTOMER_SHADOW VALUES(
:NEW.CID,
:NEW.CName,
:NEW.CLocation,
:NEW.CState,
USER,
TO_CHAR(SYSDATE, 'MM/DD/YY hh:mm:ss'));
END;
/