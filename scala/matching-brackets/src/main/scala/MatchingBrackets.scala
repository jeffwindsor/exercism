object MatchingBrackets {
  private val brackets: Map[Char, Char] = Map('[' -> ']','{'->'}','('->')')
  private val openBrackets: Set[Char] = brackets.keySet
  private val closeBrackets: Set[Char] = Set.from(brackets.values)

  def isPaired(text: String): Boolean = {
    val opened = scala.collection.mutable.Stack[Char]()
    for (c <- text) {
      // open bracket push its closer to stack
      if (openBrackets.contains(c))
        opened.push(brackets.getOrElse(c, '?'))
      // check that if a closing bracket that it matches latest opener
      if (closeBrackets.contains(c) && (opened.isEmpty || opened.pop() != c))
        return false
    }
    // fail if any openers left unclosed
    opened.isEmpty
  }
}
