module Year
  def self.leap?(year)
    (year % 4).zero? and (!(year % 100).zero? or (year % 400).zero?)
  end
end
