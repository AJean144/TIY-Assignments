require 'minitest/autorun'
require 'minitest/pride'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

#This will be a game of black jack. 

#Deck
  #The deck should have 2,3,4,5,6,7,8,9,10 and then face cards like jack, queen, king and ace. 
  #Each face card is the same as 10 except for the ace which is 11.
  #The deck will have these values 4 times for the deck.

#Dealer
  #The dealer will be able to randomly give a card to the player and must deal 2 cards only at the start of game.
  #When the player says hit, dealer must give one random card. Every card delt must remove a card from the deck.
  #The dealer must stop if players draws to 17. 

#Hand
  #Hand must receive 2 cards at the begining of the game. 
  #Must be able to hit
  #If the hand gets to 17 or higher then cannot hit anymore
  #If hand gets moret han 21 then hand loses
  #If hand has more than than player and player is over 17 then player wins

  def setup
    @game = Game.new
  end

  def test_game_exists
    assert @game
  end

  def test_game_deck_exists
    assert @game.deck
  end

  def test_game_has_deck
    assert @game.deck.is_a?Array
    assert_equal 4, @game.deck.length
  end
  def test_if_game_has_dealer
    assert @game.dealer
  end
end