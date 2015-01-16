require 'minitest/autorun'
require './card'

class CardTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(7, :clubs)
	end

	def test_card_exsist
		assert @card
	end

	def test_card_has_suit
		assert_equal :clubs, @card.suit
	end

	def test_card_has_value
		assert_equal 7, @card.value
	end

	def test_how_the_card_will_display
		assert_equal "seven of :clubs", @card.display
	end

end