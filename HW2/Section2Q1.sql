--Ximan Liu
--CSC 452
--Section2Q1

-- Jane Doe MS.

CREATE OR REPLACE PROCEDURE parse_name (fn IN VARCHAR2)
AS part EXCEPTION;
BEGIN
IF length(fn) < 12 THEN
RAISE part;
ELSE
DBMS_OUTPUT.PUT_LINE(SUBSTR(fn, '-3', '3') ||' '|| UPPER(SUBSTR(fn, '1', '5')) || UPPER(SUBSTR(fn, '6', '3')));
END IF;    
EXCEPTION
WHEN part THEN
DBMS_OUTPUT.PUT_LINE('Invalid Name! ');          
END;
/

SET SERVEROUTPUT ON;
SET VERIFY OFF;
ACCEPT pn PROMPT 'Enter first name + last name + title with spaces: '
BEGIN
parse_name('&pn');
END;
/

