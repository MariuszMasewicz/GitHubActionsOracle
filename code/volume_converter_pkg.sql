CREATE OR REPLACE PACKAGE volume_converter_pkg AS
  FUNCTION liters_to_gallons(p_liters NUMBER) RETURN NUMBER;
  FUNCTION gallons_to_liters(p_gallons NUMBER) RETURN NUMBER;
  FUNCTION liters_to_pints(p_liters NUMBER) RETURN NUMBER;
  FUNCTION pints_to_liters(p_pints NUMBER) RETURN NUMBER;
  FUNCTION liters_to_fluid_ounces(p_liters NUMBER) RETURN NUMBER;
  FUNCTION fluid_ounces_to_liters(p_fluid_ounces NUMBER) RETURN NUMBER;
  FUNCTION cubic_meters_to_cubic_feet(p_cubic_meters NUMBER) RETURN NUMBER;
  FUNCTION cubic_feet_to_cubic_meters(p_cubic_feet NUMBER) RETURN NUMBER;
END volume_converter_pkg;
/
CREATE OR REPLACE PACKAGE BODY volume_converter_pkg AS
  FUNCTION liters_to_gallons(p_liters NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_liters * 0.264172052;
  END liters_to_gallons;

  FUNCTION gallons_to_liters(p_gallons NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_gallons / 0.264172052;
  END gallons_to_liters;

  FUNCTION liters_to_pints(p_liters NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_liters * 2.11337642;
  END liters_to_pints;

  FUNCTION pints_to_liters(p_pints NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_pints / 2.11337642;
  END pints_to_liters;

  FUNCTION liters_to_fluid_ounces(p_liters NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_liters * 33.8140227;
  END liters_to_fluid_ounces;

  FUNCTION fluid_ounces_to_liters(p_fluid_ounces NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_fluid_ounces / 33.8140227;
  END fluid_ounces_to_liters;

  FUNCTION cubic_meters_to_cubic_feet(p_cubic_meters NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_cubic_meters * 35.3146667;
  END cubic_meters_to_cubic_feet;

  FUNCTION cubic_feet_to_cubic_meters(p_cubic_feet NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_cubic_feet / 35.3146667;
  END cubic_feet_to_cubic_meters;
END volume_converter_pkg;
/