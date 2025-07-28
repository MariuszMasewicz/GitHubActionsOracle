set echo on
set timing on
set serveroutput on

-- Run all tests in the utPLSQL framework
BEGIN 
ut.run();
END;
/