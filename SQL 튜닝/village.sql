GRANT SELECT ON v_$session TO village;
GRANT SELECT ON v_$sql_plan_statistics_all TO village;
GRANT SELECT ON v_$sql_plan TO village;
GRANT SELECT ON v_$sql TO village;

set serveroutput on;

show serveroutput;

ALTER SESSION SET STATISTICS_LEVEL = ALL;
        
        
SELECT USER_NO, USER_EMAIL, USER_NICKNAME, USER_TEL, 
TO_CHAR(ENROLL_DATE, 'YYYY-MM-DD HH24:MI:SS') AS ENROLL_DATE, PROFILE_IMG, KAKAO_USER_KEY, ADMINISTER
FROM "USER"
WHERE USER_EMAIL = 'test@gmail.com'
AND USER_PW = 'pjlyRDGCRTptDlN1Qw4xmuZtZxcYdkDDu6Q9pGVeSnQ7OenKlENRSLo8FIWAFVeOkozo31w+3yfBk6BvzMZ9Fg=='
AND USER_DELETE_FG = 'N';

SELECT * FROM village."USER" WHERE USER_NO = 2;
        
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL, NULL, 'ALLSTATS LAST'));


select * from plan_table;

SELECT *  FROM all_tables;
