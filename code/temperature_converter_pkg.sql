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
  END celsius_to_kelvin;

  FUNCTION kelvin_to_celsius(p_kelvin NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_kelvin - 273.15;
  END kelvin_to_celsius;

  FUNCTION celsius_to_fahrenheit(p_celsius NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_celsius * 9/5 + 32;
  END celsius_to_fahrenheit;

  FUNCTION fahrenheit_to_celsius(p_fahrenheit NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN (p_fahrenheit - 32) * 5/9;
  END fahrenheit_to_celsius;

  FUNCTION kelvin_to_fahrenheit(p_kelvin NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN (p_kelvin - 273.15) * 9/5 + 32;
  END kelvin_to_fahrenheit;

  FUNCTION fahrenheit_to_kelvin(p_fahrenheit NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN (p_fahrenheit - 32) * 5/9 + 273.15;
  END fahrenheit_to_kelvin;
END temperature_converter_pkg;
/