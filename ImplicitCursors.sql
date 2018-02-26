DECLARE

    v_ssn EMPLOYEE.SSN%TYPE;

BEGIN
	SELECT SSN INTO v_ssn FROM EMPLOYEE WHERE NAME_TXT = 'SMITH ROBERT K';
	
	dbms_output.put_line( 'NUMBER ROWS RETURNED (should be one) : ' || sql%ROWCOUNT);

END;
/
