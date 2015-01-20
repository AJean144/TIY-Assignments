require 'minitest/autorun'
require './player'
require './dealer'
require './card'
require './deck'
require './to_english'

class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(3, :Hearts), Card.new(9, :Spades), Card.new(5, :Clubs)]
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
		assert_equal 17, @player.hands_value?
	end

	def test_how_the_players_hand_will_display
		assert_equal "You have the three of Hearts, nine of Spades, five of Clubs", @player.players_hand
	end

	def test_player_can_win
		assert_equal "You Win!", @player.wins
	end

end