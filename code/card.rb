require './to_english'


#The creation of a new card

class Card

	attr_reader :suit, :value #This is what I need to call card.suit on my card
								#in order to pull out the suit from my card

	def initialize(value, suit) #This activates my card and allowes it to exsist
		@value = value #Every card must have a value
		@suit = suit #Every card must have a suit
	end

	def display #This is how the card will display, and its checking to see if the 
	card_value = if value.is_a?(Fixnum) #card is a number, and if it is, change it 
					value.to_english #to the english word of that number
					else #if it's not a number (integer) then let it display 
						value  #the value normally, because it could be a King, Queen etc...
					end
		"#{card_value} of #{suit}" #This displays the correct card by it's suit anf value
	end

	def value? #This is to ensure that the face cards keep their appropriate value
		if value == :Jack
			11
		elsif value == :Queen
			12
		elsif value == :King
			13
		else
			14
		end		
	end

end