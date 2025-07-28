CREATE OR REPLACE PACKAGE temperature_converter_pkg AS
  FUNCTION celsius_to_kelvin(p_celsius NUMBER) RETURN NUMBER;
  FUNCTION kelvin_to_celsius(p_kelvin NUMBER) RETURN NUMBER;
  FUNCTION celsius_to_fahrenheit(p_celsius NUMBER) RETURN NUMBER;
  FUNCTION fahrenheit_to_celsius(p_fahrenheit NUMBER) RETURN NUMBER;
  FUNCTION kelvin_to_fahrenheit(p_kelvin NUMBER) RETURN NUMBER;
  FUNCTION fahrenheit_to_kelvin(p_fahrenheit NUMBER) RETURN NUMBER;
END temperature_converter_pkg;
/
CREATE OR REPLACE PACKAGE BODY temperature_converter_pkg AS
  FUNCTION celsius_to_kelvin(p_celsius NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_celsius + 273.15;
  END;

  FUNCTION kelvin_to_celsius(p_kelvin NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_kelvin - 273.15;
  END;

  FUNCTION celsius_to_fahrenheit(p_celsius NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_celsius * 9/5 + 32;
  END;

  FUNCTION fahrenheit_to_celsius(p_fahrenheit NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN (p_fahrenheit - 32) * 5/9;
  END;

  FUNCTION kelvin_to_fahrenheit(p_kelvin NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN (p_kelvin - 273.15) * 9/5 + 32;
  END;

  FUNCTION fahrenheit_to_kelvin(p_fahrenheit NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN (p_fahrenheit - 32) * 5/9 + 273.15;
  END;
END temperature_converter_pkg;
/