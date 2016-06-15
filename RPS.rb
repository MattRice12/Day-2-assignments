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

# greet user
def greeting
  puts "Welcome to the most dangerous game of Rock, Paper, Scissors /
you have ever played. Your choice may very well decide your fate! /
Good Luck!"
  puts
end


def computer_choice # computer generates random choice
  options = ["paper", "rock", "scissors"]
  options.sample
end

def user_choice # prompt user to input choice
  puts "When you are ready to being, please select your favorite option!"
  puts "(p)aper \n(r)ock \n(s)cissors"

  gets.chomp  # (I want the variable to store gets.chomp later so that
              # it's scope isn't limited to this method)
end

def feedback_on_choice
  response = user_choice
  count = 0
  loop do
    puts
    case response

    when "p", "paper"
      puts "You chose paper!"
      break
    when "r", "rock"
      puts "You chose rock!"
      break
    when "s", "scissor", "scissors"
      puts "You chose scissors!"
      break
    else
      puts "You're choice was a little off. Make sure you're playing \
the correct game and try again!"
      puts
      count +=1
        if count >= 2
          puts "Would you like to (q)uit or keep (p)laying?"
          response = gets.chomp
            case response
            when "q", "quit"
              puts "Goodbye!"
              break
            when "p", "play", "play again"
              response = user_choice
            end
        else
          response = user_choice
        end
    end
  end
end

feedback_on_choice

def unknown_input # for when user inputs something other than PRS
  puts "Sorry, that is not a valid option."
end
