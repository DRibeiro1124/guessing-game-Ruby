MIN = 1
MAX = 100
answer = ""
upper = MAX
lower = MIN
name = ""
guess = MAX/2
counter = 0

puts "What's your name?"
name = gets.strip
puts "Hi #{name}, let's play the guessing game"
puts "Pick a number between #{MIN} and #{MAX}"



while answer != "y"
  puts "Is your number #{guess}?"
  print "(y)es, (h)igher or (l)ower: "
  answer = gets.chomp
  
  if answer == "h"
    counter += 1
    lower = guess + 1
    guess = ((upper - lower ) / 2) + lower 
    print guess
    puts "you pressed h"
  end

  if answer == "l"
    counter += 1
    upper = guess - 1
    guess =((upper - lower) / 2) + upper
  end

  # if answer == "y"
  guess = (lower + upper) / 2
end
puts "The correct answer is #{guess}!!!"

puts "It only took me #{counter} tries!"














