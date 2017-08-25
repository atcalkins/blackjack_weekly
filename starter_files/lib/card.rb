class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def greater_than?(card)
    value > card.value
  end

  def self.ranks
    [:A, 2, 3, 4, 5, 6, 7, 8, 9, :J, :Q, :K]
  end

  def value
    Card.ranks.index(self.rank)
  end
