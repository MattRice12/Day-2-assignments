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


______________

if feedback_on_choice = computer_choice
  puts "The computer chose #{computer_choice.upcase}!"
  puts "ASFASDFA #{translate_player_choice.upcase}"
  puts "Tie! Try again!"

else
  puts "The computer chose #{computer_choice.downcase}!"
  puts "BLAHAHAHA #{translate_player_choice.upcase}"

  puts "Not a tie!"
