module UnitTypes
(MetricUnit(..),
    ImperialUnit(..),
    Measurement(..),
    convert)
where

-- define unit types
data MetricUnit = Meter | Kilogram | Liter deriving
    (Show, Eq)

data ImperialUnit = Yard | Pound | Gallon deriving
    (Show, Eq)

data Measurement = MetricMeasurement Double MetricUnit
                 | ImperialMeasurement Double ImperialUnit
    deriving (Show, Eq)


-- return symbol of MetricUnit
symbol :: MetricUnit -> String
symbol Meter = "m"
symbol Kilogram = "kg"
symbol Liter = "L"


-- convert from one measurement to another
convert :: Measurement -> Measurement

convert (MetricMeasurement x Meter)     = (ImperialMeasurement (x*1.09361) Yard)
convert (MetricMeasurement x Kilogram)  = (ImperialMeasurement (x*2.20462) Pound)
convert (MetricMeasurement x Liter)     = (ImperialMeasurement (x*0.264172) Gallon)

convert (ImperialMeasurement x Yard)    = (MetricMeasurement (x/1.09361) Meter)
convert (ImperialMeasurement x Pound)   = (MetricMeasurement (x/2.20462) Kilogram)
convert (ImperialMeasurement x Gallon)  = (MetricMeasurement (x/0.264172) Liter)


-- implement convert using Guards
convert2 :: Measurement -> Measurement

convert2 (MetricMeasurement x u)
    | u == Meter    = ImperialMeasurement (x*1.09361) Yard
    | u == Kilogram = ImperialMeasurement (x*2.20462) Pound
    | u == Liter    = ImperialMeasurement (x*0.264172) Gallon

convert2 (ImperialMeasurement x u)
    | u == Yard     = MetricMeasurement (x/1.09361) Meter
    | u == Pound    = MetricMeasurement (x/2.20462) Kilogram
    | u == Gallon   = MetricMeasurement (x/2.20462) Liter


