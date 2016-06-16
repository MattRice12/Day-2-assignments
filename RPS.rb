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
  # game of death
  # best 2 out of 3 option?

#_______________________________________________________________

def greeting # greets player
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
    when "p", "paper"
      player_choice = "paper"
    when "r", "rock"
      player_choice = "rock"
    when "s", "scissors", "scissor"
      player_choice = "scissors"
  end
end

def feedback_on_choice # originally was to list player and computer choice;
                       # now it's just redundant...
                       # but I'm not sure how to get rid of it
                       # without breaking the program.
                       # I need something like "when not 'paper'...etc."
  response = translate_player_choice
  count = 0
  loop do
    puts
    case response
    when "paper", "rock", "scissors"
      break
    else  # for when the response is incorrect.
      puts "You're choice was a little off. Make sure you're playing \
the correct game and try again!"
      puts "___________________________________________________________________________"
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
  response
end

def game_result # core of the game
  loop do
    options = computer_choice
    response = feedback_on_choice

    if response == options
      puts "Player: #{response.upcase} vs Computer: #{options.upcase} ----- IT'S A TIE!"
      puts "No pressure, just chose again!"
      puts "___________________________________________________________________________"
      puts
    else
      if response == "paper" && options == "rock"
        puts "Player: #{response.upcase} vs Computer: #{options.upcase} ----- PLAYER WINS"
        puts "Congrats, you survived!"
      elsif response == "paper" && options == "scissors"
        puts "Player: #{response.upcase} vs Computer: #{options.upcase} ----- PLAYER LOSES"
        puts "Too bad, you died. Better luck next time!"
      elsif response == "rock" && options == "paper"
        puts "Player: #{response.upcase} vs Computer: #{options.upcase} ----- PLAYER LOSES"
        puts "Too bad, you died. Better luck next time!"
      elsif response == "rock" && options == "scissors"
        puts "Player: #{response.upcase} vs Computer: #{options.upcase} ----- PLAYER WINS"
        puts "Congrats, you survived!"
      elsif response == "scissors" && options == "paper"
        puts "Player: #{response.upcase} vs Computer: #{options.upcase} ----- PLAYER WINS"
        puts "Congrats, you survived!"
      elsif response == "scissors" && options == "rock"
        puts "Player: #{response.upcase} vs Computer: #{options.upcase} ----- PLAYER LOSES"
        puts "Too bad, you died. Better luck next time!"
      end
      break
    end
  end
end

system("clear")
greeting
game_result
