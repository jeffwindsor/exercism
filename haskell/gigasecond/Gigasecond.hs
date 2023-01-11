module Gigasecond (fromDay) where
  import Data.Time.Clock

  giga :: NominalDiffTime
  giga = 1000000000 :: NominalDiffTime

  fromDay :: UTCTime -> UTCTime
  fromDay = addUTCTime giga