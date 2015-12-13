

class Bob {
  lazy val shoutMatcher = """^[\W|\d|A-Z]*[A-Z]+[\W|\d|A-Z]*\W*$""".r
  lazy val questionMatcher = """^.*\?$""".r
  lazy val silenceMatcher = """^\s*$""".r

  def hey(s: String) : String = s match {
    case shoutMatcher(_*) => "Whoa, chill out!"
    case questionMatcher(_*) => "Sure."
    case silenceMatcher(_*) => "Fine. Be that way!"
    case _ => "Whatever."
  }
}
