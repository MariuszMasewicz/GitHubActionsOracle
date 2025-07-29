CREATE OR REPLACE PACKAGE distance_converter_pkg_test IS
--%suite(Distance Converter Package Tests)
--%suitepath(Distance_Converter)

  --%test(Meters to Yards conversion)
  PROCEDURE test_meters_to_yards;
  --%test(Yards to Meters conversion)
  PROCEDURE test_yards_to_meters;
  --%test(Meters to Feet conversion)
  PROCEDURE test_meters_to_feet;
  --%test(Feet to Meters conversion)
  PROCEDURE test_feet_to_meters;
  --%test(Meters to Inches conversion)
  PROCEDURE test_meters_to_inches;
  --%test(Inches to Meters conversion)
  PROCEDURE test_inches_to_meters;
  --%test(Kilometers to Miles conversion)
  PROCEDURE test_kilometers_to_miles;
  --%test(Miles to Kilometers conversion)
  PROCEDURE test_miles_to_kilometers;
END distance_converter_pkg_test;
/

CREATE OR REPLACE PACKAGE BODY distance_converter_pkg_test IS

  PROCEDURE test_meters_to_yards IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.meters_to_yards(1);
    ut.expect(l_result).to_be_between(1.0936, 1.0937);
  END test_meters_to_yards;

  PROCEDURE test_yards_to_meters IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.yards_to_meters(1.0936133);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_yards_to_meters;

  PROCEDURE test_meters_to_feet IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.meters_to_feet(1);
    ut.expect(l_result).to_be_between(3.2808, 3.2809);
  END test_meters_to_feet;

  PROCEDURE test_feet_to_meters IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.feet_to_meters(3.2808399);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_feet_to_meters;

  PROCEDURE test_meters_to_inches IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.meters_to_inches(1);
    ut.expect(l_result).to_be_between(39.3700, 39.3701);
  END test_meters_to_inches;

  PROCEDURE test_inches_to_meters IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.inches_to_meters(39.3700787);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_inches_to_meters;

  PROCEDURE test_kilometers_to_miles IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.kilometers_to_miles(1);
    ut.expect(l_result).to_be_between(0.6213, 0.6214);
  END test_kilometers_to_miles;

  PROCEDURE test_miles_to_kilometers IS
    l_result NUMBER;
  BEGIN
    l_result := distance_converter_pkg.miles_to_kilometers(0.621371192);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_miles_to_kilometers;

END distance_converter_pkg_test;
/