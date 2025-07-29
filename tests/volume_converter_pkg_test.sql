CREATE OR REPLACE PACKAGE volume_converter_pkg_test IS
--%suite(Volume Converter Package Tests)
--%suitepath(Volume_Converter)

  --%test(Liters to Gallons conversion)
  PROCEDURE test_liters_to_gallons;

  --%test(Liters to Gallons negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_liters_to_gallons_negative;

  --%test(Gallons to Liters conversion)
  PROCEDURE test_gallons_to_liters;

  --%test(Gallons to Liters negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_gallons_to_liters_negative;

  --%test(Liters to Pints conversion)
  PROCEDURE test_liters_to_pints;

  --%test(Liters to Pints negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_liters_to_pints_negative;

  --%test(Pints to Liters conversion)
  PROCEDURE test_pints_to_liters;

  --%test(Pints to Liters negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_pints_to_liters_negative;

  --%test(Liters to Fluid Ounces conversion)
  PROCEDURE test_liters_to_fluid_ounces;

  --%test(Liters to Fluid Ounces negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_liters_to_fluid_ounces_negative;

  --%test(Fluid Ounces to Liters conversion)
  PROCEDURE test_fluid_ounces_to_liters;

  --%test(Fluid Ounces to Liters negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_fluid_ounces_to_liters_negative;

  --%test(Cubic Meters to Cubic Feet conversion)
  PROCEDURE test_cubic_meters_to_cubic_feet;

  --%test(Cubic Meters to Cubic Feet negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_cubic_meters_to_cubic_feet_negative;

  --%test(Cubic Feet to Cubic Meters conversion)
  PROCEDURE test_cubic_feet_to_cubic_meters;

  --%test(Cubic Feet to Cubic Meters negative volume)
  --%throws(volume_converter_pkg.volume_negative)
  PROCEDURE test_cubic_feet_to_cubic_meters_negative;

END volume_converter_pkg_test;
/

CREATE OR REPLACE PACKAGE BODY volume_converter_pkg_test IS

  PROCEDURE test_liters_to_gallons IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_gallons(1);
    ut.expect(l_result).to_be_between(0.26417, 0.26418);
  END test_liters_to_gallons;

  PROCEDURE test_liters_to_gallons_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_gallons(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_liters_to_gallons_negative;

  PROCEDURE test_gallons_to_liters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.gallons_to_liters(0.264172052);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_gallons_to_liters;

  PROCEDURE test_gallons_to_liters_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.gallons_to_liters(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_gallons_to_liters_negative;

  PROCEDURE test_liters_to_pints IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_pints(1);
    ut.expect(l_result).to_be_between(2.1133, 2.1135);
  END test_liters_to_pints;

  PROCEDURE test_liters_to_pints_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_pints(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_liters_to_pints_negative;

  PROCEDURE test_pints_to_liters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.pints_to_liters(2.11337642);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_pints_to_liters;

  PROCEDURE test_pints_to_liters_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.pints_to_liters(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_pints_to_liters_negative;

  PROCEDURE test_liters_to_fluid_ounces IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_fluid_ounces(1);
    ut.expect(l_result).to_be_between(33.8140, 33.8141);
  END test_liters_to_fluid_ounces;

  PROCEDURE test_liters_to_fluid_ounces_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.liters_to_fluid_ounces(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_liters_to_fluid_ounces_negative;

  PROCEDURE test_fluid_ounces_to_liters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.fluid_ounces_to_liters(33.8140227);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_fluid_ounces_to_liters;

  PROCEDURE test_fluid_ounces_to_liters_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.fluid_ounces_to_liters(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_fluid_ounces_to_liters_negative;

  PROCEDURE test_cubic_meters_to_cubic_feet IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.cubic_meters_to_cubic_feet(1);
    ut.expect(l_result).to_be_between(35.3146, 35.3147);
  END test_cubic_meters_to_cubic_feet;

  PROCEDURE test_cubic_meters_to_cubic_feet_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.cubic_meters_to_cubic_feet(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_cubic_meters_to_cubic_feet_negative;

  PROCEDURE test_cubic_feet_to_cubic_meters IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.cubic_feet_to_cubic_meters(35.3146667);
    ut.expect(l_result).to_be_between(0.9999, 1.0001);
  END test_cubic_feet_to_cubic_meters;

  PROCEDURE test_cubic_feet_to_cubic_meters_negative IS
    l_result NUMBER;
  BEGIN
    l_result := volume_converter_pkg.cubic_feet_to_cubic_meters(-1);
  /*EXCEPTION
    WHEN volume_converter_pkg.volume_negative THEN
      ut.expect(sqlcode).to_equal(-20003);*/
  END test_cubic_feet_to_cubic_meters_negative;

END volume_converter_pkg_test;
/