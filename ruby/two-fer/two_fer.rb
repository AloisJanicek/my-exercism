module Asdf
  def two_fer(name="you")
    "One for #{name}, one for me." 
  end
end

class TwoFer
  extend Asdf
end
