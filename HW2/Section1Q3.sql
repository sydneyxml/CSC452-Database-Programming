--Ximan Liu
--CSC 452
--Section1Q3

SET SERVEROUTPUT ON;
ACCEPT old_salary PROMPT 'Enter your salary up to now:'
ACCEPT raise_percentage PROMPT 'Give a raise percentage:'
DECLARE
old_salary NUMBER(9,2) := &old_salary;
new_salary NUMBER(9,2);
raise_percentage NUMBER(9,2) := &raise_percentage;
BEGIN
new_salary := old_salary * (1 + raise_percentage /100);
DBMS_OUTPUT.PUT_LINE('The new salary is: ' || new_salary);    
END;
/

