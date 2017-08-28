require relative "card"
require relative "hand"
require relative "deck"
require realative "game"


class Player
  attr_accessor :hand, :hand_value, :ace_count
  def initialize
    @hand = []
    @hand_value = 0
    @ace_count = ace_count
    @bank = 100

  end

  def hit
    card = .draw
    @hand_value == 0 ? @hand_value = card.value.to_i : @hand_value += card.value.to_i
    @hand << card
  end

  def bank
    @bank
  end
  # need to -10 every bet here?
end


#hand reset
