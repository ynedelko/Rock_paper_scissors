class String
  #def beats?(challenger)
  define_method(:beats?) do |challenger|
    #unrecognized = "I have no idea what you're doing, try again!"
    downcase!
    challenger.downcase!
    if self == "rock"
      if challenger == "scissors"
        true
      elsif challenger == "paper"
        false
      elsif challenger == "rock"
        nil
      else
        "unrecognized"
      end
    elsif self == "paper"
      if challenger == "scissors"
        false
      elsif challenger == "rock"
        true
      elsif challenger == "paper"
        nil
      else
        "unrecognized"
      end
    elsif self == "scissors"
      if challenger == "rock"
        false
      elsif challenger == "paper"
        true
      elsif challenger == "scissors"
        nil
      else
        "unrecognized"
      end
    else
      "unrecognized"
    end
  end
end
