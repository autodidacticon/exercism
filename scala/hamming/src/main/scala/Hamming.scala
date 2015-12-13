
object Hamming {
  def compute(s1: String, s2: String): Int = {
    if (s1.length != s2.length) {
      throw new IllegalArgumentException
    }

    s1.zip(s2).filter(c => c._1 != c._2).length
  }
}
