require_relative "player"
require_relative "dealer"
require_relative "deck"
require_relative "card"

def initialize
  @user = user.new
  @dealer = dealer.new
  @deck = deck.new
  # dealer.draw(2)
  # user.draw(2)
end

def rules

  # Rules of blackjack implemented here
  # 21 = blackjack
  def blackjack_value
    card.value(21) == blackjack

  end
  # 17 = Dealer Stay


  # 16 or < = Dealer hit
  # Values == to each other = push and money returned
  # new game resets the deck and shuffles and draws 2 cards for dealer and hand
  #player has 100 in money only bets and loses or gains 10

end



def show_hand(player, hand)
  puts "#{player}\n" +
  "#{hand}"
end

end




require_relative "deck"
require_relative "card"
require_relative "user"
require_relative "dealer"

class Game

  def initialize
    @user = User.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def user
    @user
  end

  def dealer
    @dealer
  end

  def deck
    @deck
  end

  def shuffle
    deck.shuffle
  end

  def user_hand_init
    2.times do
      card = deck.draw

    end
  end

  def player_input
    while true
      print "You have bet $10.00 Would you like to (h)it or (s)tay?"
      answer = gets.chomp.downcase
      if answer[1] == "h"
        user.hand << deck.draw
        return true
      elsif answer[1] == "s"
        return true
      else
        return false
      end
      print "Dealer wins"
    end
  end

  def user_hand_value

  end

end
