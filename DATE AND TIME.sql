USE CODEGNAN;
CREATE TABLE EMP10(
           ID INT,
           DATEE DATE);
           
INSERT INTO EMP10 VALUES(101,"2024-7-22");
SELECT * FROM EMP10;

SELECT CURDATE();
SELECT CURRENT_DATE();
SELECT DATE_ADD("2024-7-22",INTERVAL 3 MONTH);
SELECT DATE_ADD("2024-7-22",INTERVAL 3 day);
SELECT DATE_ADD("2024-7-22",INTERVAL 3 YEAR);

SELECT datediff("2024-07-22","2024-06-22");

CREATE TABLE EMP11(
           ID INT ,
           TIMEE TIME);
           
INSERT INTO EMP11 VALUE(1,"3:3:3");
INSERT INTO EMP11 VALUES(2,"25:3:3");
SELECT * FROM EMP11;

SELECT CURTIME();
SELECT addtime("23:59:59","0:0:1");
SELECT SUBTIME("10:10:10","1:1:1");
SELECT TIMEDIFF("10:10:10","1:1:1");

SELECT time_to_sec("00:01:01");

create table emp12(
             id int,
             TS timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp);
             
INSERT INTO EMP12(ID) VALUES(1);
SELECT * FROM EMP12;
SET SQL_SAFE_UPDATES=0;
UPDATE EMP12 SET ID=2;
             
