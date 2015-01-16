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

	def test_the_jack_card_for_its_value
		jack = Card.new(:Jack, :Spades)
		assert_equal 11, jack.value?
	end

	def test_the_queen_card_for_its_value
		queen = Card.new(:Queen, :Spades)
		assert_equal 12, queen.value?
	end

	def test_the_king_card_for_its_value
		king = Card.new(:King, :Spades)
		assert_equal 13, king.value?
	end

	def test_the_ace_card_for_its_value
		ace = Card.new(:Ace, :Spades)
		assert_equal 14, ace.value?
	end

end






