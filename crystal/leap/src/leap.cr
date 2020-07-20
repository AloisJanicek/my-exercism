class Year
  def self.leap?(year)
    0 == year % 4 && ((0 != year % 100) || 0 == year % 400)
  end
end
