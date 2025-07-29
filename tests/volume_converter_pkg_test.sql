CREATE OR REPLACE PACKAGE volume_converter_pkg_test IS
--%suite(Volume Converter Package Tests)
--%suitepath(Volume_Converter)
  --%test(Liters to Gallons conversion)
  PROCEDURE test_liters_to_gallons;
  --%test(Gallons to Liters conversion)
  PROCEDURE test_gallons_to_liters;
  --%test(Liters to Pints conversion)
  PROCEDURE test_liters_to_pints;
  --%test(Pints to Liters conversion)
  PROCEDURE test_pints_to_liters;
  --%test(Liters to Fluid Ounces conversion)
  PROCEDURE test_liters_to_fluid_ounces;
  --%test(Fluid Ounces to Liters conversion)
  PROCEDURE test_fluid_ounces_to_liters;
  --%test(Cubic Meters to Cubic Feet conversion)
  PROCEDURE test_cubic_meters_to_cubic_feet;
  --%test(Cubic Feet to Cubic Meters conversion)
  PROCEDURE test_cubic_feet_to_cubic_meters;
END volume_converter_pkg_test;
/

CREATE OR REPLACE PACKAGE BODY volume_converter_pkg_test IS

  PROCEDURE test_liters_to_gallons IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_gallons(1);
    ut.expect(l_result).to_be_between(0.26417, 0.26418);
  END test_liters_to_gallons;

  PROCEDURE test_gallons_to_liters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.gallons_to_liters(0.264172052);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_gallons_to_liters;

  PROCEDURE test_liters_to_pints IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_pints(1);
    ut.expect(l_result).to_be_between(2.1133, 2.1135);
  END test_liters_to_pints;

  PROCEDURE test_pints_to_liters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.pints_to_liters(2.11337642);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_pints_to_liters;

  PROCEDURE test_liters_to_fluid_ounces IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_fluid_ounces(1);
    ut.expect(l_result).to_be_between(33.8140, 33.8141);
  END test_liters_to_fluid_ounces;

  PROCEDURE test_fluid_ounces_to_liters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.fluid_ounces_to_liters(33.8140227);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_fluid_ounces_to_liters;

  PROCEDURE test_cubic_meters_to_cubic_feet IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.cubic_meters_to_cubic_feet(1);
    ut.expect(l_result).to_be_between(35.3146, 35.3147);
  END test_cubic_meters_to_cubic_feet;

  PROCEDURE test_cubic_feet_to_cubic_meters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.cubic_feet_to_cubic_meters(35.3146667);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_cubic_feet_to_cubic_meters;

END volume_converter_pkg_test;
/
