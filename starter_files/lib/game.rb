require_relative 'player'
require_relative 'dealer'
require_relative 'deck'

class Game
  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  attr_reader :player

  attr_reader :dealer

  attr_reader :deck

  def shuffle_deck
    @deck.shuffle
  end

  def player_draw
    @deck.draw(@player.hand)
  end

  def dealer_draw
    @deck.draw(@dealer.hand)
  end

  attr_reader :hand_value

  def player_hand(player)
    @hand_value = 0
    hand_total = player.hand.length - 1

    for i in 0..hand_total
      if (player.hand[i].rank == :K) || (player.hand[i].rank == :Q) || (player.hand[i].rank == :J)
        @hand_value += 10
      elsif player.hand[i].rank == :A
        @hand_value += if @hand_value > 10
          1
        else
          11
        end
      else
        @hand_value += player.hand[i].rank
      end
      puts "#{player.hand[i].rank} #{player.hand[i].suit.upcase}"
    end
  end
end
