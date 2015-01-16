require './to_english'

class Card

	attr_reader :suit, :value

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

	def value?
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