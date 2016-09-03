
class Anagram(word: String) {
  lazy val lowerCaseWord = word toLowerCase
  lazy val chars = lowerCaseWord sorted

  def sortedCharacters(word: String) = (word toLowerCase) sorted

  def matches(words: Seq[String]) = {
    words.filter(word => word.toLowerCase != lowerCaseWord && sortedCharacters(word) == chars)
  }
}