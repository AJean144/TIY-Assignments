require 'minitest/autorun'
require './card'
require './to_english'

class CardTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(7, :Spades)
	end

	def test_card_exsist
		assert @card
	end

	def test_card_has_suit
		assert_equal :Spades, @card.suit
	end

	def test_card_has_value
		assert_equal 7, @card.value
	end

	def test_how_the_card_will_display
		assert_equal "seven of Spades", @card.display
	end


end