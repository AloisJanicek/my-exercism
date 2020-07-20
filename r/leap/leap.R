leap <- function(year) {
  divisible_by <- function(num) {
    return(0 == year %% num)
  }
  return(divisible_by(4) && !divisible_by(100) || divisible_by(400))
}
