require relative "deck"
require relative "hand"
require relative "card"
require relative "player"

def initialize
  @cards = []
  @hand = []
  @value = 0
  @num_aces = 0
end

def value(hand)
  hand_value = 0
  hand.each do |card|
    hand_value += card
  end
end

def hit
   cards << deck.cards.pop
end

def ace_flip

end
