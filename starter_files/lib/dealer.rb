require relative "card"
require relative "game"
require relative "player"
require relative "deck"

def initialize
  @hand = Hand.new
  @deck = Deck.new
  @players = players
  @game_over = false
end
  #hand reset


  def game_in_play
    puts "Dealer is dealing cards \n"
    play_round until @game_over
    puts "game over \n\n"
  end

  def show_dealer_hand
    show_hand(self, @hand)
  end
