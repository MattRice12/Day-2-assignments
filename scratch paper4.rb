# Each game consists of a single round where the player makes a choice
  # and the computer makes a random choice and they are compared against
  # each other to determine a winner.

# The game should ask the player for their choice of
  # "rock", "paper", or "scissors". (use gets.chomp)

# The game should then randomly select the computer's selection
# The game then outputs who won in this format:
  # "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"

# Rock beats scissors
# Paper beats Rock
# Scissors beats Paper

# other
  # best 2 out of 3 option?

#_______________________________________________________________

# greet player

def greeting
  puts "Welcome to the most dangerous game of Rock, Paper, Scissors /
you have ever played. Your choice may very well decide your fate! /
Good Luck!"
  puts
end



def computer_choice # computer generates random choice
  options = ["paper", "rock", "scissors"].sample
end

def player_choice # prompt player to input choice
  puts "When you are ready to begin, please select your favorite option!"
  puts "(p)aper \n(r)ock \n(s)cissors"

  gets.chomp  # (I want the variable to store gets.chomp later so that
              # it's scope isn't limited to this method)
end

def translate_player_choice # simplify input into "paper", "rock", or "scissors"
  response = player_choice
    case response.downcase
    when response = "p", "paper"
      player_choice = "paper"
    when response = "r", "rock"
      player_choice = "rock"
    when response = "s", "scissors", "scissor"
      player_choice = "scissors"
  end
end


def feedback_on_choice # tell player what he chose
  system("clear")
  greeting
  response = translate_player_choice
  count = 0
  loop do
    puts
    case response
    when "paper", "rock", "scissors"
      puts "You chose #{response.upcase}!"
      break
    else  # for when the response is incorrect.
          # I should try to put this in a new method.
          # 1 hours later... Tried. Didn't work.
      puts "You're choice was a little off. Make sure you're playing \
the correct game and try again!"
      puts
      count +=1
        if count >= 2
          puts "Would you like to (q)uit or keep (p)laying?"
          response = gets.chomp
            case response
            when "q", "quit"
              puts
              puts "Goodbye!"
              break
            when "p", "play", "play again", "playing"
              puts
              system("clear")
              count = 0
              response = translate_player_choice
            end
        else
          response = translate_player_choice
        end
    end
  end
end

def game # core of the game
    play_game = feedback_on_choice
    case play_game
    when player_choice = computer_choice
      puts "The computer chose #{computer_choice.upcase}!"
      puts "Tie! Try again!"

    else
      puts "The computer chose #{computer_choice.downcase}!"
      puts "line 105 doesn't work"

  end
end

game


# translate player's choice to "paper", "rock", or "scissors"
# compare player_choice to computer_choice
# set victory conditions (maybe do this in a dif method)
# set messages based on game outcome
# best 2 out of 3? (maybe do this in a dif method)
# option to play again (maybe do this in a dif method)
