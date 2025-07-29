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

CREATE OR REPLACE PACKAGE BODY calculator_pkg_test IS

  PROCEDURE test_add IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.add(2, 3);
    ut.expect(l_result).to_equal(5);
  END test_add;

  PROCEDURE test_subtract IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.subtract(10, 4);
    ut.expect(l_result).to_equal(6);
  END test_subtract;

  PROCEDURE test_multiply IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.multiply(3, 5);
    ut.expect(l_result).to_equal(15);
  END test_multiply;

  PROCEDURE test_divide IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.divide(10, 2);
    ut.expect(l_result).to_equal(5);
  END test_divide;

/*
  PROCEDURE test_divide_by_zero IS
  BEGIN
    ut.expect(
      FUNCTION RETURN NUMBER IS
      BEGIN
        RETURN calculator_pkg.divide(1, 0);
      END;
    ).to_raise_application_error(-20001);
  END test_divide_by_zero;
*/
END calculator_pkg_test;
/