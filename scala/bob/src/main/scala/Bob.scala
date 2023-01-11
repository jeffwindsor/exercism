object Bob {
  def response(statement: String): String = statement.trim() match {
    case s if isYelling(s) =>
      if (isQuestion(s)) "Calm down, I know what I'm doing!"
      else "Whoa, chill out!"
    case s if isQuestion(s) => "Sure."
    case s if s.isEmpty => "Fine. Be that way!"
    case _ => "Whatever."
  }
  def isQuestion(s:String): Boolean = s.nonEmpty && s.charAt(s.length - 1) == '?'
  def isYelling(s:String): Boolean = {
    val letters = s.filter(_.isLetter)
    letters.nonEmpty && letters.forall(_.isUpper)
  }
}
