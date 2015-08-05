class String
  #def beats?(challenger)
  define_method(:beats?) do |challenger|
    downcase!
    challenger.downcase!
    if self == "rock"
      if challenger == "scissors"
        true
      end
    end
  end
end
