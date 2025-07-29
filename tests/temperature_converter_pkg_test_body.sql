CREATE OR REPLACE PACKAGE temperature_converter_pkg_test IS
--%suite(Temperature Converter Package Tests)
--%suitepath(Temperature_Converter)

  --%test(Celsius to Kelvin conversion)
  PROCEDURE test_celsius_to_kelvin;
  --%test(Kelvin to Celsius conversion)
  PROCEDURE test_kelvin_to_celsius;
  --%test(Celsius to Fahrenheit conversion)
  PROCEDURE test_celsius_to_fahrenheit;
  --%test(Fahrenheit to Celsius conversion)
  PROCEDURE test_fahrenheit_to_celsius;
  --%test(Kelvin to Fahrenheit conversion)
  PROCEDURE test_kelvin_to_fahrenheit;
  --%test(Fahrenheit to Kelvin conversion)
  PROCEDURE test_fahrenheit_to_kelvin;
  /*
  --%test(Kelvin below zero not allowed)
  PROCEDURE test_kelvin_below_zero;
  --%test(Celsius below absolute zero not allowed)
  PROCEDURE test_celsius_below_absolute_zero;
  --%test(Fahrenheit below absolute zero not allowed)
  PROCEDURE test_fahrenheit_below_absolute_zero;
  */
END temperature_converter_pkg_test;
/

CREATE OR REPLACE PACKAGE BODY temperature_converter_pkg_test IS

  PROCEDURE test_celsius_to_kelvin IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.celsius_to_kelvin(0);
    ut.expect(l_result).to_equal(273.15);
  END test_celsius_to_kelvin;

  PROCEDURE test_kelvin_to_celsius IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.kelvin_to_celsius(273.15);
    ut.expect(l_result).to_equal(0);
  END test_kelvin_to_celsius;

  PROCEDURE test_celsius_to_fahrenheit IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.celsius_to_fahrenheit(0);
    ut.expect(l_result).to_equal(32);
  END test_celsius_to_fahrenheit;

  PROCEDURE test_fahrenheit_to_celsius IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.fahrenheit_to_celsius(32);
    ut.expect(l_result).to_equal(0);
  END test_fahrenheit_to_celsius;

  PROCEDURE test_kelvin_to_fahrenheit IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.kelvin_to_fahrenheit(273.15);
    ut.expect(l_result).to_equal(32);
  END test_kelvin_to_fahrenheit;

  PROCEDURE test_fahrenheit_to_kelvin IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.fahrenheit_to_kelvin(32);
    ut.expect(l_result).to_equal(273.15);
  END test_fahrenheit_to_kelvin;

/*
  -- Boundary tests
  PROCEDURE test_kelvin_below_zero IS
  BEGIN
    ut.expect(
      FUNCTION RETURN NUMBER IS
      BEGIN
        RETURN temperature_converter_pkg.kelvin_to_celsius(-1);
      END;
    ).to_raise_application_error;
  END test_kelvin_below_zero;

  PROCEDURE test_celsius_below_absolute_zero IS
  BEGIN
    ut.expect(
      FUNCTION RETURN NUMBER IS
      BEGIN
        RETURN temperature_converter_pkg.celsius_to_kelvin(-274);
      END;
    ).to_raise_application_error;
  END test_celsius_below_absolute_zero;

  PROCEDURE test_fahrenheit_below_absolute_zero IS
  BEGIN
    ut.expect(
      FUNCTION RETURN NUMBER IS
      BEGIN
        RETURN temperature_converter_pkg.fahrenheit_to_kelvin(-500);
      END;
    ).to_raise_application_error;
  END test_fahrenheit_below_absolute_zero;
*/
END temperature_converter_pkg_test;
/