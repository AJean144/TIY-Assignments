require './to_english'

class Card

	attr_reader :value, :suit

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	def display
	card_value = if value.is_a?(Fixnum)
					value.to_english
				else
					value  
				end
		"#{card_value} of #{suit}"
	end

end