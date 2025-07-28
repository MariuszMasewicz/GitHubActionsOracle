set echo on
set timing on
set serveroutput on
SET SQLFORMAT ansiconsole

-- Run all tests in the utPLSQL framework
BEGIN 
ut.run(a_reporters => ut_junit_reporter(),
       a_output => 'ut_results.xml');
END;
/