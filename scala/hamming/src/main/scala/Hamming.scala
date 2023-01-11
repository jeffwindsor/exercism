object Hamming {
  def distance(dnaStrandOne: String, dnaStrandTwo: String): Option[Int] =
    if (dnaStrandOne.length == dnaStrandTwo.length)
      Some(hamming_distance(dnaStrandOne, dnaStrandTwo))
    else
      None

    private def hamming_distance(dnaStrandOne: String, dnaStrandTwo: String): Int =
      dnaStrandOne.zip(dnaStrandTwo).count(a => a._1 != a._2)
}
