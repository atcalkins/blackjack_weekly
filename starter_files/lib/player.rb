class Player
  def initialize
    @money = 100
    @hand = []
  end

  attr_reader :hand

  attr_reader :money

  def wager
    @money -= 10
  end

  def push
    @money += 0
  end

  def win
    @money += 20
  end
end
