CREATE OR REPLACE PACKAGE temperature_converter_pkg_test IS
--%suite(Temperature Converter Package Tests)
--%suitepath(Temperature_Converter)

  --%test(Celsius to Kelvin conversion)
  PROCEDURE test_celsius_to_kelvin;

  --%test(Celsius to Kelvin below absolute zero - should raise exception)
  --%throws(temperature_converter_pkg.absolute_zero)
  PROCEDURE test_celsius_to_kelvin_negative;

  --%test(Kelvin to Celsius conversion)
  PROCEDURE test_kelvin_to_celsius;

  --%test(Kelvin to Celsius below absolute zero - should raise exception)
  --%throws(temperature_converter_pkg.absolute_zero)
  PROCEDURE test_kelvin_to_celsius_negative;

  --%test(Celsius to Fahrenheit conversion)
  PROCEDURE test_celsius_to_fahrenheit;

  --%test(Celsius to Fahrenheit below absolute zero - should raise exception)
  --%throws(temperature_converter_pkg.absolute_zero)
  PROCEDURE test_celsius_to_fahrenheit_negative;

  --%test(Fahrenheit to Celsius conversion)
  PROCEDURE test_fahrenheit_to_celsius;

  --%test(Fahrenheit to Celsius below absolute zero - should raise exception)
  --%throws(temperature_converter_pkg.absolute_zero)
  PROCEDURE test_fahrenheit_to_celsius_negative;

  --%test(Kelvin to Fahrenheit conversion)
  PROCEDURE test_kelvin_to_fahrenheit;

  --%test(Kelvin to Fahrenheit below absolute zero - should raise exception)
  --%throws(temperature_converter_pkg.absolute_zero)
  PROCEDURE test_kelvin_to_fahrenheit_negative;

  --%test(Fahrenheit to Kelvin conversion)
  PROCEDURE test_fahrenheit_to_kelvin;

  --%test(Fahrenheit to Kelvin below absolute zero - should raise exception)
  --%throws(temperature_converter_pkg.absolute_zero)
  PROCEDURE test_fahrenheit_to_kelvin_negative;

END temperature_converter_pkg_test;
/

CREATE OR REPLACE PACKAGE BODY temperature_converter_pkg_test IS

  PROCEDURE test_celsius_to_kelvin IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.celsius_to_kelvin(0);
    ut.expect(l_result).to_equal(273.15);
  END test_celsius_to_kelvin;

  PROCEDURE test_celsius_to_kelvin_negative IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.celsius_to_kelvin(-274);
/*   EXCEPTION
    WHEN temperature_converter_pkg.absolute_zero THEN
      ut.expect(sqlcode).to_equal(-20002); */
  END test_celsius_to_kelvin_negative;

  PROCEDURE test_kelvin_to_celsius IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.kelvin_to_celsius(273.15);
    ut.expect(l_result).to_equal(0);
  END test_kelvin_to_celsius;

  PROCEDURE test_kelvin_to_celsius_negative IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.kelvin_to_celsius(-1);
/*   EXCEPTION
    WHEN temperature_converter_pkg.absolute_zero THEN
      ut.expect(sqlcode).to_equal(-20002); */
  END test_kelvin_to_celsius_negative;

  PROCEDURE test_celsius_to_fahrenheit IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.celsius_to_fahrenheit(0);
    ut.expect(l_result).to_equal(32);
  END test_celsius_to_fahrenheit;

  PROCEDURE test_celsius_to_fahrenheit_negative IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.celsius_to_fahrenheit(-274);
/*   EXCEPTION
    WHEN temperature_converter_pkg.absolute_zero THEN
      ut.expect(sqlcode).to_equal(-20002); */
  END test_celsius_to_fahrenheit_negative;

  PROCEDURE test_fahrenheit_to_celsius IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.fahrenheit_to_celsius(32);
    ut.expect(l_result).to_equal(0);
  END test_fahrenheit_to_celsius;

  PROCEDURE test_fahrenheit_to_celsius_negative IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.fahrenheit_to_celsius(-500);
/*   EXCEPTION
    WHEN temperature_converter_pkg.absolute_zero THEN
      ut.expect(sqlcode).to_equal(-20002); */
  END test_fahrenheit_to_celsius_negative;

  PROCEDURE test_kelvin_to_fahrenheit IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.kelvin_to_fahrenheit(273.15);
    ut.expect(l_result).to_equal(32);
  END test_kelvin_to_fahrenheit;

  PROCEDURE test_kelvin_to_fahrenheit_negative IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.kelvin_to_fahrenheit(-1);
/*   EXCEPTION
    WHEN temperature_converter_pkg.absolute_zero THEN
      ut.expect(sqlcode).to_equal(-20002); */
  END test_kelvin_to_fahrenheit_negative;

  PROCEDURE test_fahrenheit_to_kelvin IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.fahrenheit_to_kelvin(32);
    ut.expect(l_result).to_equal(273.15);
  END test_fahrenheit_to_kelvin;

  PROCEDURE test_fahrenheit_to_kelvin_negative IS
    l_result NUMBER;
  BEGIN
    l_result := temperature_converter_pkg.fahrenheit_to_kelvin(-500);
/*   EXCEPTION
    WHEN temperature_converter_pkg.absolute_zero THEN
      ut.expect(sqlcode).to_equal(-20002); */
  END test_fahrenheit_to_kelvin_negative;

END temperature_converter_pkg_test;
/
