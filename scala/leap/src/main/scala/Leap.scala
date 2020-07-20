object Leap {
  def leapYear(year: Int): Boolean = (0 == year % 4) && ((!(0 == year % 100)) || (0 == year % 400))
}
