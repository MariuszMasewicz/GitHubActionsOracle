CREATE OR REPLACE PACKAGE BODY calculator_pkg AS

  FUNCTION add(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN a + b;
  END;

  FUNCTION subtract(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN a - b;
  END;

  FUNCTION multiply(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN a * b;
  END;

  FUNCTION divide(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    IF b = 0 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Division by zero is not allowed.');
    END IF;
    RETURN a / b;
  END;

END calculator_pkg;
/
