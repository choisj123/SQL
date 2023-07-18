ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
CREATE USER village IDENTIFIED BY village;
GRANT RESOURCE, CONNECT TO village;
ALTER USER village DEFAULT TABLESPACE 
SYSTEM QUOTA UNLIMITED ON SYSTEM;

GRANT SELECT ON V$SESSION TO village;
GRANT SELECT ON V_$SQL_PLAN_STATISTICS_ALL TO VILLAGE;
GRANT SELECT ON V_$SQL_PLAN TO VILLAGE;
GRANT SELECT ON V_$SQL TO VILLAGE;



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



GRANT SELECT ON v_$session TO scott;
GRANT SELECT ON v_$sql_plan_statistics_all TO scott;
GRANT SELECT ON v_$sql_plan TO scott;
GRANT SELECT ON v_$sql TO scott;


SELECT * FROM USER_SYS_PRIVS_MADE WHERE GRANTEE = 'VILLAGE';

SELECT * FROM DBA_SESSION WHERE USERNAME LIKE '1%';

GRANT SELECT_CATALOG_ROLE TO village;

GRANT SELECT_CATALOG_ROLE TO village;

