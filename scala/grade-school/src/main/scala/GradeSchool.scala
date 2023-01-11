class School {
  type DB = Map[Int, Seq[String]]
  def db: DB = _db
  var _db: DB = Map[Int, Seq[String]]()

  def add(name: String, g: Int): Unit =
    _db = _db + (g -> (grade(g) :+ name))

  def grade(g: Int): Seq[String] = db.get(g) match {
    case Some(names) => names
    case None => Seq[String]()
  }

  def sorted: DB = {
    db.toList
      .map({case (k, v) => (k, v.sorted)})
      .sortWith(_._1 < _._1)
      .toMap
  }
}

