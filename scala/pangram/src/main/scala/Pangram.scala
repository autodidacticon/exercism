import scala.collection.mutable.Map

object Pangrams {
  val alphabet = "abcdefghijklmnopqrstuvwxyz"

  def isPangram(word: String): Boolean = word.toLowerCase.sorted.filter(c => alphabet.contains(c)).distinct == alphabet
  
}

