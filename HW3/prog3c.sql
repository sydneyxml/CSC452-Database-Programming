--Ximan Liu
--CSC 452
--prog3c

SET SERVEROUTPUT ON;
DECLARE
oldvalue NUMBER;
newvalue NUMBER;
oldvalue2 NUMBER;
BEGIN
oldvalue := &oldzipvalue;
newvalue := &newzipvalue;
SELECT ZIP INTO oldvalue2 FROM ZIPCODES WHERE ZIP = oldvalue;
UPDATE ZIPCODES SET ZIP = newvalue WHERE ZIP = oldvalue;
UPDATE CUSTOMERS SET ZIP = newvalue WHERE ZIP = oldvalue;
UPDATE EMPLOYEES SET ZIP = newvalue WHERE ZIP = oldvalue;
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('No data found!');
END;
/

