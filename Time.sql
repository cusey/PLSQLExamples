--OUTPUT
/*
l_date : 31-JAN-11
l_date_timetzone : 21-SEP-09 02.45.00.000000 PM AMERICA/NEW_YORK
l_interval1 : +2011-11
*/
DECLARE
  l_date   DATE;
  l_date_timetzone   TIMESTAMP WITH TIME ZONE;
  l_interval1        INTERVAL YEAR (4) TO MONTH ; -- The 4 means the year must be four digits long
  
BEGIN
  l_date := TO_DATE ('31-jan-2011', 'DD-MON-YYYY');
  l_date_timetzone := to_timestamp ('2009-09-21 14:45', 'YYYY-MM-DD HH24: MI: SS');
  l_interval1 := '2011-11';
  
  DBMS_OUTPUT.put_line ('l_date : '||l_date);
  DBMS_OUTPUT.put_line ('l_date_timetzone : '||l_date_timetzone);
  DBMS_OUTPUT.put_line ('l_interval1 : '||l_interval1);
  
END;
/