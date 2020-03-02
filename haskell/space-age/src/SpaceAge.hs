module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

earthYearRatio :: Planet -> Float
earthYearRatio Mercury = 0.2408467
earthYearRatio Venus = 0.61519726
earthYearRatio Earth = 1.0
earthYearRatio Mars = 1.8808158
earthYearRatio Jupiter = 11.862615
earthYearRatio Saturn = 29.447498
earthYearRatio Uranus = 84.016846
earthYearRatio Neptune = 164.79132

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / (31557600 * earthYearRatio planet)
