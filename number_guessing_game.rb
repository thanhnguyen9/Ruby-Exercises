# Assignment 1:

# Create a number guessing game.
# Game should pick a random number between 1 and 100 and ask you for a guess.
# If the guess is less than the number, inform the user and let them guess again.
# If the guess is greater than the number, inform the user and let them guess again.
# If the guess is correct, inform the user and quit.

# Bonus: write the opposite program: you, the user, pick a number between 1 and 100.
# The computer has to guess the number.
# You tell it whether it's too high, too low, or right on after each guess.
# The computer gets five guesses.

def number_guess
  a = rand(1..100)

  print "Take a guess my friend: "
  response = gets.chomp

  until a == response

      if response.to_i > a
        puts "Your number is greater than number. Guess again"
        response = gets.chomp
      else
        puts "Your number is smaller than number. Guess again"
        response = gets.chomp
      end
    end
end

number_guess()
