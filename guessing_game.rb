# Welcome statement
puts "Welcome to the NUMBR guessing game."
puts " If you can guess the number we have selected you win $100,000!"

# Generated number 1 to 100
secretnum = rand(100) + 1
guess_array = Array.new

# Computer generated # to test program
puts secretnum


def input(message, array) # method statement for how many guesses are left
  puts message
  guess_left(array)
  input_guess = gets.chomp.to_i # user input + changed to #
  array << input_guess #pushed to end of array

  return input_guess # Returns input if incorrectly guess
end

def guess_left(array)
  left = array.length
  puts "Keep guessing" unless left == 0 # Tells user to continue until 0 guess left then exits
end

guess = input("What number did NUMBR Choose? Guess a number between 1 and 100.", guess_array)

while guess_array.length < 5 # Number of attempts
  if guess > secretnum
    guess = input("WOW Very Low!", guess_array) #less than secrectnum
  elsif guess < secretnum
    guess = input("WOW Way High ", guess_array) #great than secrectnum
  else guess == secretnum
    puts "Congrats! You Win!" # Winner and Exits
    exit
  end
end
# Final string prints following loss
print "You Lose today's game! Sorry and thank you for playing!"
# let's hope this is final!
