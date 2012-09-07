#!/usr/bin/env ruby

# guesser.rb - play a number guessing game
# David Sewell and Christopher M. Hobbs
#
# TODO: add a hint method
# TODO: add command line options for starting with a random or arbitrary number
# TODO: add error checking to gets in case the user is stupid and inputs potato
# TODO: don't exit the game if the answer was wrong, instead ask for another answer
# TODO: add meme taunts to failure messages
# TODO: add unit tests

################################
# here starts the class definition

class Game
  #  Create a new game with Game.new(n), where n is any
  #  integer between 1 and 10.  The default value will be
  #  5.
  def initialize(number = 5)
    if (number > 10) || (number < 1)
      throw "Game answer is out of range, please select a number between one and ten."
    else
      @answer = number
    end
  end

  # Cheat and give us the answer. 
  def answer?
    return @answer
  end

  # Guess a number, returns true if the guess is correct and
  # returns false if the guess is incorrect.
  def guess(number)
    unless number == @answer
      return false
    else
      return true
    end
  end
end

################################
#  here starts program calls

# start a new game
puts "Welcome to the number guesser.  I am thinking of a number"
puts "between one and ten.  I bet you're too dumb to beat me!"
g = Game.new(3)                              # change this value as desired
#puts "== DEBUG game answer: #{g.answer?}"   # show us the answer for debug purposes

# ask the user for a number
puts ""
puts "Input a number, you pleeb:  "
n = gets              # set variable 'n' to user's input
n = n.to_i            # convert the string returned by gets to an integer
result = g.guess(n)   # take a guess

# see if our guess was correct
if result == true                  
  #puts "== DEBUG you guessed #{n}"
  puts "Correct answer!  Come back and I shall taunt you again!"
else
  #puts "== DEBUG you guessed #{n}"
  puts "You fail!"
end
