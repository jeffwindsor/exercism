sealed abstract class Bearing
object Bearing {
  val North: Int = 0
  val East: Int = 1
  val South: Int = 2
  val West: Int = 3
  def turnRight(bearing:Int):Int = (bearing + 1) % 4
  def turnLeft(bearing: Int): Int = (bearing + 3) % 4
}

case class Robot(var bearing:Int, var coordinates:(Int, Int)){
  def turnRight: Robot = this.copy(bearing=Bearing.turnRight(bearing))
  def turnLeft: Robot = this.copy(bearing=Bearing.turnLeft(bearing))
  def advance: Robot = {
    this.bearing match {
      case Bearing.North => this.copy(coordinates=this.coordinates.copy(_2 = this.coordinates._2 + 1))
      case Bearing.East => this.copy(coordinates=this.coordinates.copy(_1 = this.coordinates._1 + 1))
      case Bearing.South => this.copy(coordinates=this.coordinates.copy(_2 = this.coordinates._2 - 1))
      case Bearing.West => this.copy(coordinates=this.coordinates.copy(_1 = this.coordinates._1 - 1))
    }
  }
  def simulate(moves:String):Robot = moves.foldLeft(this)((acc, c) => c match {
    case 'R' => acc.turnRight
    case 'L' => acc.turnLeft
    case 'A' => acc.advance
  } )
}

object Robot{
  def apply(bearing:Int, coordinates:(Int, Int)): Robot = new Robot(bearing, coordinates)
}