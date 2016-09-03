import scala.collection.mutable.Map

case class Anagram(word: String) {

  val characterMap = new CharacterMap(word)
  def matches(words: Seq[String]): Seq[String] = {
    words.filter(wd => {
      val w = wd.toLowerCase
      w match {
        case `word` => false
        case _ => {
          val cMap = characterMap.copy()
          w.toList.forall(c => {
            cMap -= c
            cMap.contains(c)
          })
        }
      }
    })
  }
}


case class CharacterMap(word: String) extends Map[Char, Int] {
  private val characterMap = {
    val map = Map[Char, Int]()
    word.toLowerCase.toList.foreach(c => {
      val ct = map.getOrElse(c, 0)
      if (ct == 0) {
        map.put(c, 1)
      } else {
        map.update(c, ct + 1)
      }
    })
    map
  }

  override def +=(kv: (Char, Int)) = {
    val ct = characterMap.getOrElse(kv._1, 0)
    characterMap.getOrElseUpdate(kv._1, ct + 1)
    this
  }

  override def -=(key: Char) = {
    val ct = characterMap.getOrElse(key, 0)
    if (ct == 0) {
      characterMap.remove(key)
    } else {
      characterMap.update(key, ct - 1)
    }
    this
  }

  override def get(key: Char): Option[Int] = characterMap.get(key)

  override def iterator: Iterator[(Char, Int)] = characterMap.iterator
}
