
-- BASIC VIEW
CREATE OR REPLACE VIEW V1 AS SELECT * FROM PROJECT WHERE CHIEF="PROF";

-- DOUBLE JOIN STATEMENT
CREATE OR REPLACE VIEW EMP_PRO_NAME AS 
(   
    SELECT EMPLOYEE.EMPNAME AS EMP_NAME, PROJECT.PNAME AS PROJECT_NAME
    FROM (
        (EMPLOYEE INNER JOIN ASSIGNED ON EMPLOYEE.EMPNO=ASSIGNED.EMPNO)
        INNER JOIN PROJECT ON ASSIGNED.PNO=PROJECT.PNO
    )
);


create materialized view v1 as .....


/*
- VIEWS ARE VIRTUAL TABLES, WHO'S DATA ISN'T ACTUALLY STORED IN DATABASE
- THEY ACT AS STORED QUERYS, EVERYTIME WE SELECT VIEWS, IT EXECUTES THAT QUERY AND FETCH THE DATA.
*/
