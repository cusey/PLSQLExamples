--OUTPUT 
 /* 
student(1) :Tom
student(2) :Bill
student(3) :Joe
student(4) :Sam
student(5) :Ann
 */ 
DECLARE 
    -- INITIALING ARRAY TYPE
    type STUDENTS_ARRAY IS VARRAY(5) OF VARCHAR2(10); 
    -- INITIALING VARABLE
    students STUDENTS_ARRAY;
 BEGIN 
 
    students := STUDENTS_ARRAY('Tom','Bill','Joe','Sam','Ann');
    
     FOR i in 1 .. STUDENTS.count LOOP 
      dbms_output.put_line('student(' || i || ') :' || students(i)  );
     END LOOP;

 END;
 /