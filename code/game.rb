#This is going to be a game of Black Jack
#Black Jack is a card playing game

### Objective  ###

# The objective of the game is to beat the dealer. If your cards 
#total higher than the dealer's cards without going over 21 you win

# If your hand or the dealer's hand goes over 21 you "Bust." 
#If you bust you automatically lose

# If the dealer busts and you do not you win

# The player must act first

#I need to creat a deck



class Game

  attr_accessor :deck #with this code I'm now able to use the deck 
  #like a method i.e Game.new.deck

  def initialize
    @deck = :a_thing_which_exists
    @deck = [
            [2,3,4,5,6,7,8,9,10,10,10,10,11],
            [2,3,4,5,6,7,8,9,10,10,10,10,11],
            [2,3,4,5,6,7,8,9,10,10,10,10,11],
            [2,3,4,5,6,7,8,9,10,10,10,10,11]
            ]
  end

end