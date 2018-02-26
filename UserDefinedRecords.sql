--OUTPUT
/*
Book 1 title : C Programming
Book 1 author : Tom Smith
Book 1 book_id : 101
Book 2 title : Java Programming
Book 2 author : Tom Johnson
Book 2 book_id : 102
*/

DECLARE 
   type library is record (
      title varchar(50), 
      author varchar(50), 
      book_id number); 

    book1 library; 
    book2 library;
BEGIN 
   -- Book 1 specification 
   book1.title  := 'C Programming'; 
   book1.author := 'Tom Smith';  
   book1.book_id := 101; 
   
   book2.title  := 'Java Programming'; 
   book2.author := 'Tom Johnson';  
   book2.book_id := 102;  
     
  
  -- Print book 1 record 
   dbms_output.put_line('Book 1 title : '|| book1.title); 
   dbms_output.put_line('Book 1 author : '|| book1.author); 
   dbms_output.put_line('Book 1 book_id : ' || book1.book_id); 
   
   -- Print book 2 record 
   dbms_output.put_line('Book 2 title : '|| book2.title); 
   dbms_output.put_line('Book 2 author : '|| book2.author); 
   dbms_output.put_line('Book 2 book_id : '|| book2.book_id); 
END; 
/