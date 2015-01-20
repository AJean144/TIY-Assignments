require './card'
require './deck'
require './dealer'
require './to_english'

class Player

	attr_reader :hand

	def initialize(cards = [])
		@hand = cards
	end

	def pick(card)
		@hand << card
	end

	def hands_value?
		@hand.inject(0){|sum, card| sum + card.value }
	end

	def players_hand
		"You have the #{show_cards}"
	end

	def show_cards
		@hand.map{|cards| cards.display}.join(', ')
	end

	def dealers_hand
		@hand.map{|cards| cards.display}.join(', ')
	end

	def wins
		if players_hand < dealers_hand
			"You Win!"
		elsif players_hand > dealers_hand
			"Dealer Wins!"
		elsif players_hand == dealers_hand
			"It's a tie!"
		else
			"Opps... Something crazy happened, Play again!"
		end
	end
end



