--Ximan Liu
--CSC452
--phase2.sql


CREATE OR REPLACE PROCEDURE add_information(	
v_ZIP VARCHAR2,
v_CITY VARCHAR2,
v_STATE VARCHAR2,
v_LATITUDE VARCHAR2,
v_DST VARCHAR2
)
IS
v_count NUMBER;
BEGIN
	IF LENGTH(TRIM(v_ZIP)) > 6 THEN 
          	DBMS_OUTPUT.PUT_LINE('Invalid in_customer_id!');
		RETURN;
	END IF;

	SELECT  COUNT(*)
	INTO	v_count
	FROM	ZIPCODE
	WHERE	ZIP = v_ZIP;

	IF v_count != 0 THEN
		DBMS_OUTPUT.PUT_LINE('Invalid v_ZIP!');
		RETURN;
	END IF;

  	IF TRIM(v_CITY) is NULL OR LENGTH(TRIM(v_CITY)) > 20 THEN 
          	DBMS_OUTPUT.PUT_LINE('Invalid v_CITY!');
		RETURN;
	END IF;
 
    IF UPPER(TRIM(v_STATE)) != 'IL' THEN 
          	DBMS_OUTPUT.PUT_LINE('Invalid v_STATE!');
		RETURN;
	END IF;

    IF TRIM(v_LATITUDE) is NULL OR LENGTH(TRIM(v_LATITUDE)) > 10 THEN 
          	DBMS_OUTPUT.PUT_LINE('Invalid v_LATITUDE!');
		RETURN;
	END IF;

	IF TRIM(v_DST) is NULL OR LENGTH(TRIM(v_DST)) > 5 THEN 
          	DBMS_OUTPUT.PUT_LINE('Invalid v_DST!');
		RETURN;
	END IF;

	INSERT INTO ZIPCODE 
       	VALUES(TRIM(v_ZIP), UPPER(TRIM(v_CITY)), UPPER(TRIM(v_STATE)), TRIM(v_LATITUDE), TRIM(v_DST));
	COMMIT;
	
    DBMS_OUTPUT.PUT_LINE('New data has been added into the zipcode table.');
		
EXCEPTION
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Error!');
END;
/

EXEC add_information(60000, 'Jacksonville', 'IL', 42, 1);

EXEC add_information(61111, 'Miami', 'IL', 42, 1);


SELECT * FROM ZIPCODE;







