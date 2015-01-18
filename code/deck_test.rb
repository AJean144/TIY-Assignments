require 'minitest/autorun'
require './deck'
require './card'
require './to_english'

class DeckTest < MiniTest::Unit::TestCase

	def setup
		@deck = Deck.new
	end

	def test_how_many_cards_in_the_deck
		assert_equal 52, @deck.size
		assert_kind_of Card, @deck[0]
	end

	def test_if_deck_has_cards_in_it
		assert @deck.cards
	end

	def test_deck_can_deal_cards
		cards = @deck.deal(3)
		assert_kind_of Card, cards[0]
		assert_equal 49, @deck.size
	end
end
