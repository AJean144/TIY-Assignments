require 'minitest/autorun'
require './to_img'

class CardTest < MiniTest::Unit::TestCase
	def setup
		@card = Card.new(:Ace, :Spades)
	end
	def test_if_card_exsist
		assert @card
	end
	def test_card_has_a_value
		assert_equal :Ace, @card.value
	end
	def test_if_card_has_a_suit
		assert_equal :Spades, @card.suit
	end
	def test_how_card_displays
		assert_equal "Ace of Spades", @card.display
	end
	def test_the_card_holds_its_correct_value
		assert_equal 14, @card.value?
	end
	def test_if_lower_card_displays_correctly
		lower_card = Card.new(7, :Clubs)
		assert_equal "seven of Clubs", lower_card.display
		
		puts "This card is the #{@card.value} of #{@card.suit}"

		puts "And this card is the #{lower_card.display}"

		puts "This is a test to make sure that both of these cards hold their correct values... 
		First let's check the #{@card.display} to see if it's value is actually #{@card.value?} 
		next let's try the #{lower_card.display} to see if it's value is actually #{lower_card.value?}"
	end
end