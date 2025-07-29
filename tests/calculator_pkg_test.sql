CREATE OR REPLACE PACKAGE CALCULATOR_PKG_TEST IS
  -- utPLSQL test package
  --%suite(Calculator Package Tests)
  --%suitepath(calculator)

  --%test(Test addition)
  PROCEDURE TEST_ADD;

  --%test(Test subtraction)
  PROCEDURE TEST_SUBTRACT;

  --%test(Test multiplication)
  PROCEDURE TEST_MULTIPLY;

  --%test(Test division)
  PROCEDURE TEST_DIVIDE;

/*
  --%test(Test division by zero)
  PROCEDURE test_divide_by_zero;
*/
END CALCULATOR_PKG_TEST;
/

CREATE OR REPLACE PACKAGE BODY CALCULATOR_PKG_TEST IS

  PROCEDURE TEST_ADD IS
    L_RESULT NUMBER;
  BEGIN
    L_RESULT := CALCULATOR_PKG.ADD(
      2
     ,3
    );
    UT.EXPECT(L_RESULT).TO_EQUAL(5);
  END TEST_ADD;

  PROCEDURE TEST_SUBTRACT IS
    L_RESULT NUMBER;
  BEGIN
    L_RESULT := CALCULATOR_PKG.SUBTRACT(
      10
     ,4
    );
    UT.EXPECT(L_RESULT).TO_EQUAL(6);
  END TEST_SUBTRACT;

  PROCEDURE TEST_MULTIPLY IS
    L_RESULT NUMBER;
  BEGIN
    L_RESULT := CALCULATOR_PKG.MULTIPLY(
      3
     ,5
    );
    UT.EXPECT(L_RESULT).TO_EQUAL(15);
  END TEST_MULTIPLY;

  PROCEDURE TEST_DIVIDE IS
    L_RESULT NUMBER;
  BEGIN
    L_RESULT := CALCULATOR_PKG.DIVIDE(
      10
     ,2
    );
    UT.EXPECT(L_RESULT).TO_EQUAL(5);
  END TEST_DIVIDE;

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
END CALCULATOR_PKG_TEST;
/