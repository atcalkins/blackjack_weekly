require 'deck'

def initialize

end

def reset
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

end

def ace_flip

end
