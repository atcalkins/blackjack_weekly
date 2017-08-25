require_relative "card"

class Deck
  def initialize
    @cards = []
    @suits = [:spades, :diamonds, :clubs, :hearts]
    @ranks = Card.ranks

    @ranks.each do |rank|
      @cards <<
      Card.new(rank, :spades)
    end
  end

  end

  def cards_left
    52
  end

  def draw
    Card.new(
  end
end
