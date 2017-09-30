class Card

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  attr_reader :suit, :rank

  def self.ranks
    [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
  end

  def greater_than?(card)
    value > card.value
  end

  def value(rank)
    ranks.index(rank)
  end

  def ==(card)
    suit == card.suit &&
      rank == card.rank
  end

  def value
    self.class.ranks.index(rank)
  end
end
