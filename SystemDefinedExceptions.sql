--OUTPUT
/*
Division by zero
*/
BEGIN
   DBMS_OUTPUT.PUT_LINE(1 / 0);
EXCEPTION
 WHEN ZERO_DIVIDE THEN
    DBMS_OUTPUT.PUT_LINE('Division by zero');
END;
 /