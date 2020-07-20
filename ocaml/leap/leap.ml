let leap_year year =
  let divisible_by num = 0 == year mod num in
  (divisible_by(4) && (not (divisible_by(100)) || divisible_by(400)))
;;
