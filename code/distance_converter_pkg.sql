CREATE OR REPLACE PACKAGE distance_converter_pkg AS
  FUNCTION meters_to_yards(p_meters NUMBER) RETURN NUMBER;
  FUNCTION yards_to_meters(p_yards NUMBER) RETURN NUMBER;
  FUNCTION meters_to_feet(p_meters NUMBER) RETURN NUMBER;
  FUNCTION feet_to_meters(p_feet NUMBER) RETURN NUMBER;
  FUNCTION meters_to_inches(p_meters NUMBER) RETURN NUMBER;
  FUNCTION inches_to_meters(p_inches NUMBER) RETURN NUMBER;
  FUNCTION kilometers_to_miles(p_kilometers NUMBER) RETURN NUMBER;
  FUNCTION miles_to_kilometers(p_miles NUMBER) RETURN NUMBER;
END distance_converter_pkg;
/

CREATE OR REPLACE PACKAGE BODY distance_converter_pkg AS
  FUNCTION meters_to_yards(p_meters NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_meters * 1.0936133;
  END meters_to_yards;

  FUNCTION yards_to_meters(p_yards NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_yards / 1.0936133;
  END yards_to_meters;

  FUNCTION meters_to_feet(p_meters NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_meters * 3.2808399;
  END meters_to_feet;

  FUNCTION feet_to_meters(p_feet NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_feet / 3.2808399;
  END feet_to_meters;

  FUNCTION meters_to_inches(p_meters NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_meters * 39.3700787;
  END meters_to_inches;

  FUNCTION inches_to_meters(p_inches NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_inches / 39.3700787;
  END inches_to_meters;

  FUNCTION kilometers_to_miles(p_kilometers NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_kilometers * 0.621371192;
  END kilometers_to_miles;

  FUNCTION miles_to_kilometers(p_miles NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN p_miles / 0.621371192;
  END miles_to_kilometers;
END distance_converter_pkg;
/
