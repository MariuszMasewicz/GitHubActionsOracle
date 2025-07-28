CREATE OR REPLACE PACKAGE calculator_pkg_test IS
  -- utPLSQL test package
  --%suite(Calculator Package Tests)
  --%suitepath(calculator)

  --%test(Test addition)
  PROCEDURE test_add;

  --%test(Test subtraction)
  PROCEDURE test_subtract;

  --%test(Test multiplication)
  PROCEDURE test_multiply;

  --%test(Test division)
  PROCEDURE test_divide;

/*
  --%test(Test division by zero)
  PROCEDURE test_divide_by_zero;
*/
END calculator_pkg_test;
/
