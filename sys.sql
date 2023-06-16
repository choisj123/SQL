ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
CREATE USER village IDENTIFIED BY village;
GRANT RESOURCE, CONNECT TO village;
ALTER USER village DEFAULT TABLESPACE 
SYSTEM QUOTA UNLIMITED ON SYSTEM;

GRANT SELECT ON v_$session TO village;
GRANT SELECT ON v_$sql_plan_statistics_all TO village;
GRANT SELECT ON v_$sql_plan TO village;
GRANT SELECT ON v_$sql TO village;



SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL, NULL, 'ALLSTATS LAST'));



ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
CREATE USER turtle IDENTIFIED BY turtle;

GRANT RESOURCE, CONNECT TO turtle;
ALTER USER turtle DEFAULT TABLESPACE 
SYSTEM QUOTA UNLIMITED ON SYSTEM;

GRANT SELECT ON v_$session TO turtle;
GRANT SELECT ON v_$sql_plan_statistics_all TO turtle;
GRANT SELECT ON v_$sql_plan TO turtle;
GRANT SELECT ON v_$sql TO turtle;

commit;