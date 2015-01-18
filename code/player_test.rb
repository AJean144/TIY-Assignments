require 'minitest/autorun'
require './player'
require './card'
require './deck'
require './to_english'

class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(7, :Clubs), Card.new(5, :Hearts)]
		@player = Player.new(cards)
	end

	def test_the_players_hand
		assert @player.hand
	end

	def test_the_player_can_pick_card
		card = Card.new(8, :Diamonds)
		@player.pick card
		assert @player.hand.include? card
	end

	def test_the_value_of_players_hand
		assert_equal 12, @player.hands_value?
	end

end