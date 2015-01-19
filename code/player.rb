require './card'
require './deck'
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
		@hand.map{|cards| cards.display}.join(' and ')
	end
end