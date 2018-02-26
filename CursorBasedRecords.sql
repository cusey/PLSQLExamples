--OUTPUT
/*
Steven King SKING
Neena Kochhar NKOCHHAR
Lex De Haan LDEHAAN
Alexander Hunold AHUNOLD
Bruce Ernst BERNST
*/

DECLARE 
   CURSOR c_employees is 
      SELECT 
            FIRST_NAME  || ' ' || LAST_NAME as name , 
            EMAIL 
      FROM EMPLOYEES WHERE EMPLOYEE_ID < 105; 
      
   employees_record c_employees%rowtype; 
BEGIN 
   OPEN c_employees; 
   LOOP 
      FETCH c_employees into employees_record; 
      EXIT WHEN c_employees%notfound; 
      DBMS_OUTPUT.put_line(employees_record.name || ' ' || employees_record.EMAIL); 
   END LOOP; 
END; 
/
