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

under_eighteen = ["do nothing"]
over_eighteen = ["smoke", "vote"].join(", and ")
over_twenty_one = [over_eighteen, "drink"].join(", and ")
over_twenty_five = [over_twenty_one, "rent a car"].join(", and ")

age = check_age
if age < 18
  puts "You can #{under_eighteen}"
elsif (age >= 18) && (age < 21)
  puts "You can #{over_eighteen}"
elsif age >= 21
  puts "You can #{over_twenty_one}"
elsif age >= 25
  puts "You can #{over_twenty_five}"
end
