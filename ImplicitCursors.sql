DECLARE

    v_phone EMPLOYEES.PHONE_NUMBER%TYPE;

BEGIN
	SELECT PHONE_NUMBER INTO v_phone FROM EMPLOYEE WHERE EMPLOYEE_ID = 100;
	
	--there should only be one row returned because I am using primary key
	dbms_output.put_line( 'NUMBER ROWS : ' || sql%ROWCOUNT);

END;
/
