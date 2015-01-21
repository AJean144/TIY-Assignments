require 'minitest/autorun'
require './poker_card'

class TestPoker_card < MiniTest::Unit::TestCase
	def setup
		@card = Card.new(:Ace, :Spades)
	end
	def test_to_see_if_card_exsist
		assert @card
	end
end