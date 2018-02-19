/*
Precision is the total number of digits. Scale is the number of digits after the decimal point.

Example:
NUMBER(7,5): 12.12345
NUMBER(5,0): 12345

PL/SQL User-Defined Subtypes
A subtype is a subset of another data type, which is called its base type. 
A subtype has the same valid operations as its base type, but only a subset of its valid values.

PL/SQL predefines several subtypes in package STANDARD. For example, PL/SQL predefines the subtypes CHARACTER and INTEGER as follows
*/

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
