

# def numConverter(number_name)
		
# one_to_twenty = ['one','two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty']

# tens = ['thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

# add_one = number_name - 1

# 	if one_to_twenty[number_name] == one_to_twenty[0]
# 		puts 'one'
# 	end
# end

# puts numConverter (1)

# one_to_twenty = ['one','two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty']


# puts one_to_twenty[0]



# I have a hash of number names and their integer counterparts
# I want the integer based on the number name.
# number_hash[number_name]
# if I find the name of the number in the hash, print the integer, if not, print "This number exceeds my limit... Opps"

def num_converter(number_name)
	number_hash = {'one' => 1, 
				  'two' => 2, 
				  'three' => 3,
				  'four' => 4,
				  'five' => 5,
				  'six' => 6,
				  'seven' => 7,
				  'eight' => 8
				}
	# number_hash[number_name] || 0
	if number_hash[number_name]
		number_hash[number_name]
	end

	if number_name == 'three'
		puts 3
	elsif number_name == 'seven'
		puts 7
	else 
		"This number exceeds my limit... Opps"
	end
end	

puts num_converter('seven')
puts num_converter('two') 
puts num_converter('five')
puts num_converter('three')
