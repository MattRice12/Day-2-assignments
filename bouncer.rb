# Write a method called check_age that is called every time the script is run.
# Ask age
# Prompt input for age
# It then tells me what I can do based on my age.
  # If I am younger than 18, I can do nothing.
  # If I am older than 18, I can vote.
  # If I am older than 18, I can smoke.
  # If I am older than 21, I can drink.
  # If I am older than 25, I can rent a car.

def check_age
  puts "Howdy do, how old are you? "
  gets.chomp.to_i
end

def get_user_input
  puts
  puts "What would you like to do?"
  print "<(p)lay again or (q)uit> "

  gets.chomp #gets user input to store in variable response further down
end

def unknown_input
  puts "Sorry, I didn't catch that?"
end



def game # this is the game method
  under_eighteen = ["do nothing"]
  over_eighteen = ["smoke", "vote"]
  over_twenty_one = [over_eighteen, "drink"]
  over_twenty_five = [over_twenty_one, "rent a car"]

  system("clear")

  age = check_age

  loop do # this loop returns messages based on age input
    if (age < 18) && (age > 1) # Under 18
      puts "You can #{under_eighteen.join}."
      break
    elsif (age >= 18) && (age < 21) # Between 18-21
      last_elem = over_eighteen.pop
      puts "You can #{over_eighteen.join} and #{last_elem}."
      break
    elsif (age >= 21) && (age < 25) # Between 21-25
      last_elem = over_twenty_one.pop
      puts "You can #{over_twenty_one.join(", ")}, and #{last_elem}."
      break
    elsif (age >= 25) && (age <= 122)# Over 25
      last_elem = over_twenty_five.pop
      puts "You can #{over_twenty_five.join(", ")}, and #{last_elem}."
      break
    elsif (age > 122)
      puts "You're older than the oldest person who ever lived. You've \
unlocked god mode."
      break
    else # Reprompts the user when age < 0 or user inputs words.
      puts "That is not an age."
      puts "Tell me your REAL age!"
      puts
      age = check_age
    end
  end
end
game

loop do # This loop prompts the player if he wants to play again
  response = get_user_input

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
