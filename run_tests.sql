set echo on
set timing on
set serveroutput on
SET SQLFORMAT ansiconsole

-- Run all tests in the utPLSQL framework
spool ut_results.xml
BEGIN 
ut.run(a_reporter => ut_junit_reporter()
              );
END;
/
spool off