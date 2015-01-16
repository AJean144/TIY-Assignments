require 'minitest/autorun'
require './card'
require './to_english'

class CardsTest < MiniTest::Unit::TestCase

	def setup
		@value = (2..10).to_a + [:Jack, :Queen, :King, :Ace]
		@suit = [ :Hearts, :Diamonds, :Clubs, :Spades ]
		@cards = Cards.new(@value.last, @suit.last)
	end

	def test_card_exsist
		assert @cards
	end

	def test_card_has_suit
		assert_equal :Spades, @cards.suit
	end

	def test_card_has_value
		assert_equal :Ace, @cards.value
	end

	def test_how_the_card_will_display
		assert_equal "Ace of Spades", @cards.display
	end

end