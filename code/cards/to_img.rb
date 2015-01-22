require './card'
require './to_english'

#This is creating what a deck should be
class Deck

	attr_reader :cards

	
#This is activating the deck and it will start off with a nil variable. 
	def initialize(cards = nil)
		@cards = cards || [ "H", "D", "C", "S" ].map do |suit|
			((2..10).to_a + ["J", "Q", "K", "A"]).map do |value|
				Card.new(value, suit)
			end
		end.flatten.shuffle
	end

	def shuffle
		@cards = @cards.shuffle!
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

	def to_img
		print '<img src="card_imgs/<%= value %><% suit %>.svg" ALT="cards" WIDTH=300px HEIGHT=300px>'
	end
end 


