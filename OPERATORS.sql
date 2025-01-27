USE CODEGNAN;

CREATE TABLE CUSTOMERS(
               ID INT PRIMARY KEY auto_increment,
               NAME VARCHAR(50),
               AGE INT,
               STATUS VARCHAR(50));
               
INSERT INTO CUSTOMERS(NAME,AGE,STATUS) VALUES("SAI",28,"MAJOR");

INSERT INTO CUSTOMERS(NAME,AGE) VALUES("SAI1",18),("SAI2",16);
SELECT * FROM CUSTOMERS;

SELECT NAME,ID,AGE,(ID+AGE) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(AGE-ID) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(ID*AGE) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(ID/AGE) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(ID%AGE) AS NEW_DATA FROM CUSTOMERS;

SELECT NAME,ID,AGE,(AGE%2) AS NEW_DATA FROM CUSTOMERS;

CREATE TABLE EMPLOYEE1( ID INT,EMPNAME VARCHAR(50),SALARY INT);

INSERT INTO EMPLOYEE1 VALUES (1,"SAI",10000),(2,"SAI2",15000),(3,"SAI3",20000),(4,"SAI4",50000);
INSERT INTO EMPLOYEE1 VALUES (5,"SAI5",10000);
SELECT * FROM EMPLOYEE1;

SELECT * FROM EMPLOYEE1 WHERE SALARY=10000;

SELECT * FROM EMPLOYEE1 WHERE SALARY!=10000;

SELECT * FROM EMPLOYEE1 WHERE SALARY>10000;

SELECT * FROM EMPLOYEE1 WHERE SALARY<20000;

SELECT * FROM EMPLOYEE1 WHERE SALARY>=15000;

SELECT * FROM EMPLOYEE1 WHERE SALARY<=15000;

--LOGICAL OPERATORS

SELECT * FROM EMPLOYEE1 WHERE SALARY=10000 AND EMPNAME="SAI";

SELECT * FROM EMPLOYEE1 WHERE SALARY=10000 OR EMPNAME="SAI";

--NULL OPERATOR

ALTER TABLE EMPLOYEE1 ADD COLUMN AGE INT;
SET SQL_SAFE_UPDATES=0;
UPDATE EMPLOYEE1 SET AGE=20 WHERE SALARY>15000;
SELECT * FROM EMPLOYEE1;

SELECT * FROM EMPLOYEE1 WHERE AGE IS NULL;
SELECT * FROM EMPLOYEE1 WHERE AGE IS NOT NULL;

--SPECIAL OPERATORS

SELECT * FROM EMPLOYEE1 WHERE SALARY BETWEEN 15000 AND 50000;

SELECT * FROM EMPLOYEE1 WHERE SALARY IN (15000,50000);
ALTER TABLE EMPLOYEE1 ADD COLUMN BONUS VARCHAR(10);
SELECT * ,
          CASE
             WHEN SALARY<=10000 THEN "0X"
             WHEN SALARY<=20000 THEN "2X"
             WHEN SALARY<=50000 THEN "3X"
		 END AS BONUS
         FROM EMPLOYEE1;
         
         
CREATE TABLE STUDENT1(FNAME VARCHAR(50),LNAME VARCHAR(50),AGE INT);

INSERT INTO STUDENT1 VALUES("SAI","V",18),("SAI","T",20);

SELECT CONCAT(FNAME,LNAME)AS FULL_NAME FROM STUDENT1;

SELECT CONCAT(