proc isLeapYear*(year: int): bool =
  return 0 == year mod 4 and (0 != year mod 100 or 0 == year mod 400)
