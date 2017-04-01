module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

earthYear, mercuryYear, venusYear, marsYear, jupiterYear, saturnYear, uranusYear, neptuneYear :: Float
earthYear = 31557600
mercuryYear = earthYear * 0.2408467
venusYear = earthYear * 0.61519726
marsYear = earthYear * 1.8808158
jupiterYear = earthYear * 11.862615
saturnYear = earthYear * 29.447498
uranusYear = earthYear * 84.016846
neptuneYear = earthYear * 164.79132

ageOn :: Planet -> Float -> Float
ageOn Earth seconds   = seconds / earthYear
ageOn Mercury seconds = seconds / mercuryYear
ageOn Mars seconds    = seconds / marsYear
ageOn Jupiter seconds = seconds / jupiterYear
ageOn Saturn seconds  = seconds / saturnYear
ageOn Uranus seconds  = seconds / uranusYear
ageOn Neptune seconds = seconds / neptuneYear
ageOn Venus seconds   = seconds / venusYear
