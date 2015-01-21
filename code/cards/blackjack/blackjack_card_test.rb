require 'minitest/autorun'
require './blackjack_card'

class Blackjack_cardTest < MiniTest::Unit::TestCase
	def setup
		@card = Card.new(7, :Spades)
	end
	def test_if_card_exsist
		assert @card
	end
end