require 'minitest/autorun'
require_relative '../lib/deck'
require_relative '../lib/player'

class PlayerTest < MiniTest::Test
  i_suck_and_my_tests_are_order_dependent!
  def setup
    @deck = Deck.new
    @player = Player.new
  end

  def test_player_placed_wager
    @player.wager
    assert_equal 90, @player.money
  end

  def test_player_beat_dealer
    @player.win
    assert_equal 110, @player.money
  end

  def test_that_player_has_full_bank
    assert_equal 100, @player.money
  end
end
