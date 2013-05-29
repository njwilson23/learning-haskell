-- convert between metric and imperial for the following units
--  m <-> yd
--  L <-> gal
--  kg <-> lb

convert :: (Double, String) -> (Double, String)
convert (x, unit)
    | unit == "m"   = (x * 1.09361, "yd")
    | unit == "yd"  = (x / 1.09361, "m")
    | unit == "L"   = (x * 0.264172, "gal")
    | unit == "gal" = (x / 0.264172, "L")
    | unit == "kg"  = (x * 2.20462, "lb")
    | unit == "lb"  = (x / 2.20462, "kg")
    | otherwise     = error "unknown unit"

