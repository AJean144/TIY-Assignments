class Cards

	attr_reader :value, :suit

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	def display
		if value == Fixnum
			value.to_english
		else
			value
		end
		"#{value} of #{suit}"
	end

end