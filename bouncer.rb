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
  gets.chomp
end

age = check_age
check_age
