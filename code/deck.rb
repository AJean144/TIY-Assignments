require './card'
require './to_english'

#This is creating what a deck should be
class Deck

	attr_reader :cards

	
#This is activating the deck and it will start off with a nil variable. 
	def initialize(cards = nil)
		@cards = cards || [ :Hearts, :Diamonds, :Clubs, :Spades ].map do |suit|
			((2..10).to_a + [:Jack, :Queen, :King, :Ace]).map do |value|
				Card.new(value, suit)
			end
		end.flatten.shuffle
	end

	def size		
		@cards.length
	end

	def [](index)
		@cards[index]
	end

	def deal(n)
		@cards.shift(n)
	end

	def new_card
		@cards.shift
	end
end 