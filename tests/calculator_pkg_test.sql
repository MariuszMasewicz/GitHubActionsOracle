CREATE OR REPLACE PACKAGE calculator_pkg AS
  FUNCTION add(a NUMBER, b NUMBER) RETURN NUMBER;
  FUNCTION subtract(a NUMBER, b NUMBER) RETURN NUMBER;
  FUNCTION multiply(a NUMBER, b NUMBER) RETURN NUMBER;
  FUNCTION divide(a NUMBER, b NUMBER) RETURN NUMBER;
END calculator_pkg;
/

CREATE OR REPLACE PACKAGE BODY calculator_pkg AS

  FUNCTION add(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN a + b;
  END add;

  FUNCTION subtract(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN a - b;
  END subtract;

  FUNCTION multiply(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN a * b;
  END multiply;

  FUNCTION divide(a NUMBER, b NUMBER) RETURN NUMBER IS
  BEGIN
    IF b = 0 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Division by zero is not allowed.');
    END IF;
    RETURN a / b;
  END divide;

END calculator_pkg;
/
