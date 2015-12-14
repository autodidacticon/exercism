import scala.collection.mutable

class Phrase(phrase: String) {
  val wordMatcher = """[\w|\d|']+""".r
  var wordCount = new mutable.HashMap[String, Int]
  wordMatcher.findAllMatchIn(phrase.toLowerCase).toList.map(
    word => {
      wordCount += (word.toString -> (wordCount.getOrElse(word.toString, 0) + 1))
    }
  )
}
