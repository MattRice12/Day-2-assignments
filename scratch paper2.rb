def feedback_on_choice
  system("clear")
  response = player_choice
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
    end
  end
end

feedback_on_choice

def wrong_choice
  response = player_choice
  count = 0
  loop do
    puts
    case response
    when not ("p", "paper", "r", "rock", "s", "scissors", "scissor")
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

def unknown_input # for when player inputs something other than PRS
  puts "Sorry, that is not a valid option."
end
