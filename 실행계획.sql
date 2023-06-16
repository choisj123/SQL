-- sys 계정에서 권한 부여

GRANT SELECT ON v_$session TO kh;
GRANT SELECT ON v_$sql_plan_statistics_all TO kh;
GRANT SELECT ON v_$sql_plan TO kh;
GRANT SELECT ON v_$sql TO kh;

set serveroutput off;

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT *
FROM PLAN_TABLE;

SELECT * 
FROM EMPLOYEE
WHERE EMP_ID LIKE '20%';
-- 가공돼서 인덱스를 타지 못함

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL, NULL, 'ALLSTATS LAST'));

SELECT * 
FROM EMPLOYEE
WHERE EMP_ID >= 200;


SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL, NULL, 'ALLSTATS LAST'));

SELECT /*+ gather_plan_statistics */ * FROM (SELECT * FROM EMPLOYEE WHERE EMP_ID=200);

select * from table(dbms_xplan.display);


SELECT D.DEPT_ID, D.DEPT_TITLE, E.EMP_ID, E.EMP_NAME 
FROM DEPARTMENT D, EMPLOYEE E  
WHERE D.DEPT_ID = E.DEPT_CODE 
AND D.DEPT_ID = 'D1';

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL, NULL, 'ALLSTATS LAST'));



