require 'minitest/autorun'
require './card'
require './to_english'

class CardTest < MiniTest::Unit::TestCase

#This makes a new card for me to test
	def setup
		@card = Card.new(7, :Spades) #This puts a new card into an instance variable called 
	end #@card and for this example, the card will be the seven of spades

	def test_card_exsist
		assert @card #This is a test to check if the card actually activated
	end

	def test_card_has_suit
		assert_equal :Spades, @card.suit #Making sure the card has a suit
	end

	def test_card_has_value
		assert_equal 7, @card.value #Making sure the card has a value
	end

	def test_how_the_card_will_display
		assert_equal "seven of Spades", @card.display #Making sure the card will actually display
	end #seven of Spades and not 7 of spades. 

	def test_the_jack_card_for_its_value
		jack = Card.new(:Jack, :Spades) #Making sure the face cards hold their correct values
		assert_equal 11, jack.value?
	end

	def test_the_queen_card_for_its_value
		queen = Card.new(:Queen, :Spades) #Making sure the face cards hold their correct values
		assert_equal 12, queen.value?
	end

	def test_the_king_card_for_its_value
		king = Card.new(:King, :Spades) #Making sure the face cards hold their correct values
		assert_equal 13, king.value?
	end

	def test_the_ace_card_for_its_value
		ace = Card.new(:Ace, :Spades) #Making sure the face cards hold their correct values
		assert_equal 14, ace.value?
	end

end






