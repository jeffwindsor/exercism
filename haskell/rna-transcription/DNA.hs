module DNA (toRNA) where
  toRnaComplement :: Char -> Char
  toRnaComplement 'G' = 'C'
  toRnaComplement 'C' = 'G'
  toRnaComplement 'A' = 'U'
  toRnaComplement 'T' = 'A'
  toRnaComplement _ = error "Not an RNA Nucleotide"

  toRNA :: String -> String
  toRNA = map toRnaComplement