--OUTPUT
/*
Hello Reader              Welcome to the World of PL/SQL
Your number is:123.45
*/


DECLARE 
   SUBTYPE name IS char(20); 
   SUBTYPE message IS varchar2(100); 
   salutation name; 
   greetings message; 
   counter NUMBER(5,2);
BEGIN 
   salutation := 'Reader '; 
   greetings := 'Welcome to the World of PL/SQL'; 
   counter := 123.45;
   dbms_output.put_line('Hello ' || salutation || greetings ); 
   dbms_output.put_line('Your number is:'|| counter); 
END; 
/ 
