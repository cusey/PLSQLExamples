--OUTPUT
/*
Employees ID: 100
Employees Name: Steven King
Employees Email: SKING
*/
DECLARE 
   r_employees EMPLOYEES%rowtype; 
BEGIN 
   SELECT * into r_employees 
   FROM EMPLOYEES 
   WHERE EMPLOYEE_ID = 100;  
   
   dbms_output.put_line('Employees ID: ' || r_employees.employee_id); 
   dbms_output.put_line('Employees Name: ' || r_employees.first_name || ' ' || r_employees.last_name); 
   dbms_output.put_line('Employees Email: ' || r_employees.email); 

END; 
/
