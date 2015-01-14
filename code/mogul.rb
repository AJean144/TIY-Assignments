class Mogul
	attr_reader :net_worth

	def initialize(name, company, net_worth)
		@name = name
		@company = company
		@net_worth = net_worth #in billions
	end
end

zuckerberg = Mogul.new('Mark zuckerberg', 'Facebook', 24)
gates_no_relation = Mogul.new('Bill Gates', 'Microsoft', 46)
turner = Mogul.new('Ted Turner', 'CNN', 11)
rich_guys = [zuckerberg, gates_no_relation, turner]

ordered_rich_guys = rich_guys.sort_by{|mogul| mogul.net_worth}

print ordered_rich_guys