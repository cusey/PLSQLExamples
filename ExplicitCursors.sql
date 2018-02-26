--OUTPUT
/*
Steven King
Neena Kochhar
Lex De Haan
Alexander Hunold
Bruce Ernst
*/
DECLARE 
   v_first_name EMPLOYEES.FIRST_NAME%type; 
   v_last_name EMPLOYEES.LAST_NAME%type; 

   CURSOR c_employees is 
      SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES WHERE EMPLOYEE_ID < 105; 
BEGIN 
   OPEN c_employees; 
   LOOP 
   FETCH c_employees into v_first_name, v_last_name; 
      EXIT WHEN c_employees%notfound; 
      dbms_output.put_line(v_first_name || ' ' || v_last_name ); 
   END LOOP; 
   CLOSE c_employees; 
END; 
/
