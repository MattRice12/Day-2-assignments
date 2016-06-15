def game  # this is the core of the game


          # translate player's choice to "paper", "rock", or "scissors"
          # compare player_choice to computer_choice
          # set victory conditions (maybe do this in a dif method)
          # set messages based on game outcome
          # best 2 out of 3? (maybe do this in a dif method)
          # option to play again (maybe do this in a dif method)





def get_player_input
  puts
  puts "What would you like to do?"
  print "<(p)lay again or (q)uit> "

  gets.chomp # gets player input to store in variable response further down
              # (I want the variable to store gets.chomp later so that
              # it has global scope)
end

def unknown_input
  puts "Sorry, I didn't catch that?"
end

loop do # This loop prompts the player if he wants to play again
  response = get_player_input

  case response
    when 'p', 'play', 'play again'
      puts
      game
    when 'q', 'quit' then break
    else
      puts
      unknown_input
  end
end










____

def feedback_on_choice
  system("clear")
  response = player_choice
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
    else  # for when the response is incorrect. I should try to put this in
          # a new method.
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
            when "p", "play", "play again"
              puts
              system("clear")
              count = 0
              response = player_choice
            end
        else
          response = player_choice
        end
    end
  end
end

______________
