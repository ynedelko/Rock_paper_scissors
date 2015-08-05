require('rspec')
require('rock_paper_scissors')

describe('String#beats?') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq("Player 1 wins!"))
  end
  it("returns false if rock is the object and paper is the argument") do
    expect("rock".beats?("paper")).to(eq("Player 2 wins!"))
  end
  it("returns message if rock is the object and rock is the argument") do
    expect("rock".beats?("rock")).to(eq("It's a tie!"))
  end
  it("returns true if paper is the object and rock is the argument") do
    expect("paper".beats?("rock")).to(eq("Player 1 wins!"))
  end
  it("returns false if paper is the object and scissors is the argument") do
    expect("paper".beats?("scissors")).to(eq("Player 2 wins!"))
  end
  it("returns message if paper is the object and paper is the argument") do
    expect("paper".beats?("paper")).to(eq("It's a tie!"))
  end
  it("returns false if scissors is the object and rock is the argument") do
    expect("scissors".beats?("rock")).to(eq("Player 2 wins!"))
  end
  it("returns true if scissors is the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq("Player 1 wins!"))
  end
  it("returns message if scissors is the object and scissors is the argument") do
    expect("scissors".beats?("scissors")).to(eq("It's a tie!"))
  end
  it("returns a message letting user know if object or argument was not recognized") do
    expect("scisors".beats?("rock")).to(eq("You can't play that! Try again!"))
    expect("scissors".beats?("rocc")).to(eq("You can't play that! Try again!"))
  end
end
