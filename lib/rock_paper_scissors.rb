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
      elsif challenger == "rock"
        nil
      end
    elsif self == "paper"
      if challenger == "scissors"
        false
      elsif challenger == "rock"
        true
      elsif challenger == "paper"
        nil
      end
    end
  end
end
