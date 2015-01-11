require 'minitest/autorun'
require 'minitest/pride'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

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
    assert_equal 13, @game.deck.length
  end
end