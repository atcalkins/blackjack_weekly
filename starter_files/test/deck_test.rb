require "minitest/autorun"
require_relative "../lib/deck"

class DeckTest < Minitest::Test
  def setup
    @deck = Deck.new
  end



  def test_deck_can_be_shuffled
    shuffled_deck = @deck.shuffle
    refute_equal @deck, shuffled_deck
  end
end
