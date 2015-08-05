class String
  #def beats?(challenger)
  define_method(:beats?) do |challenger|
    downcase!
    challenger.downcase!
    if self == "rock"
      if challenger == "scissors"
        true
      elsif challenger == "paper"
        false
      end
    end
  end
end
