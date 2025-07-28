CREATE OR REPLACE PACKAGE BODY calculator_pkg_test IS

  PROCEDURE test_add IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.add(2, 3);
    ut.expect(l_result).to_equal(6);
  END;

  PROCEDURE test_subtract IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.subtract(10, 4);
    ut.expect(l_result).to_equal(6);
  END;

  PROCEDURE test_multiply IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.multiply(3, 5);
    ut.expect(l_result).to_equal(15);
  END;

  PROCEDURE test_divide IS
    l_result NUMBER;
  BEGIN
    l_result := calculator_pkg.divide(10, 2);
    ut.expect(l_result).to_equal(5);
  END;

/*
  PROCEDURE test_divide_by_zero IS
  BEGIN
    ut.expect(
      FUNCTION RETURN NUMBER IS
      BEGIN
        RETURN calculator_pkg.divide(1, 0);
      END;
    ).to_raise_application_error(-20001);
  END;
*/
END calculator_pkg_test;
/
