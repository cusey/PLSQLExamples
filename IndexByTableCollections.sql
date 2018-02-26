--OUTPUT
/*
Elvis Preley
Katy Petty
Tom Cruise
Micheal Keaton
*/
DECLARE 
   TYPE employee_names IS TABLE OF VARCHAR2(30) INDEX BY BINARY_INTEGER; 
   name_list employee_names; 
   name_index BINARY_INTEGER;
BEGIN 
   -- adding elements to the table 
   name_list(0) := 'Elvis Preley'; 
   name_list(1) := 'Katy Petty'; 
   name_list(2) := 'Tom Cruise'; 
   name_list(3) := 'Micheal Keaton';  
   
   -- printing the table 
   name_index := name_list.FIRST; 
   WHILE name_index IS NOT null LOOP 
      dbms_output.put_line ( name_list(name_index) ); 
      name_index := name_list.NEXT(name_index); 
   END LOOP; 
END; 
/