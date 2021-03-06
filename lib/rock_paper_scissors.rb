class String
  define_method(:beats?) do |challenger|
    downcase!
    challenger.downcase!
    winning = {"rock"=>"scissors", "paper"=>"rock", "scissors"=>"paper"}

    if winning.has_key?(self) && winning.has_value?(challenger)
      if winning.fetch(self) == challenger
        "Player 1 wins!"
      elsif winning.fetch(self) != challenger && self != challenger
        "Player 2 wins!"
      else
        "It's a tie!"
      end
    else
      "You can't play that! Try again!"
    end
  end
end
