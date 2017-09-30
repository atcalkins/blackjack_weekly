require_relative 'lib/game'

game = Game.new

puts "Welcome to the Blackjack Table, we accept $10 wagers only \n"

while game.player.money > 0
  puts "You have $#{game.player.money}. You will now wager $10 \n"
  game.shuffle_deck
  2.times do
    game.dealer_draw
  end
  2.times do
    game.player_draw
  end
  game.player.wager

  loop do
    puts "Your hand is \n"
    game.player_hand(game.player)
    puts "Worth #{game.hand_value} \n"
    player_total = game.hand_value
    if game.hand_value > 21
      puts "Bust.. you lose \n"
      break
    elsif game.hand_value == 21
      puts "Blackjack.. you win \n"
      game.player.win
      break
    elsif game.hand_value < 21
      puts "Would you like to (h)it or (s)tay \n"
      response = gets.chomp.downcase
      if response == 'h'
        puts "You hit, your drawn card is \n"
        game.player_draw
      elsif response == 's'
        puts "You stay at your current value \n"

        loop do
          puts "The Dealer Holds \n"
          game.player_hand(game.dealer)
          puts "with a total value of #{game.hand_value} \n"
          if game.hand_value <= 16
            game.dealer_draw
            puts 'Dealer hits'
          elsif game.hand_value > 21
            puts "Dealer has busted.. you win \n"
            game.player.win
            break
          elsif game.hand_value == 21
            puts "Dealer hits blackjack.. sorry you lose \n"
            break
          elsif game.hand_value > 16 && game.hand_value < 21
            puts 'Dealer stays'
            if player_total > game.hand_value
              game.player.win
              puts "You have the higher hand total.. you win \n"
              break
            elsif player_total < game.hand_value
              puts "Dealer has the higher hand total.. you lose \n"
              break
            else
              puts "The game is a push, your $10 wager is returned \n"
              game.player.push
              break
            end
            break
          end
        end
        break
      else
        puts "Invalid input, please (H)it or (S)tay \n"
      end
    end
  end

  loop do
    if game.player.money < 10
      puts "You are out of money.. goodbye \n"
      exit
    end
    puts "Would you like to try your luck again? \n"
    puts "Select (y)es or (n)o \n"
    play_again = gets.chomp.downcase
    if play_again == 'n'
      puts "Goodbye \n"
      exit
    elsif play_again == 'y'
      puts "Goodluck dealer is shuffling again \n"
      game.player.hand.clear
      game.dealer.hand.clear
      break
    else
      puts "Invalid Response \n"
    end
  end
end
