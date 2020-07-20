local leap_year = function(year)
  return 0 == year % 4 and ( not (0 == year % 100) or 0 == year % 400);
end

return leap_year
