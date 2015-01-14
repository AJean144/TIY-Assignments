

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

# def num_converter(number_name)
# 	number_hash = {'one' => 1, 
# 				  'two' => 2, 
# 				  'three' => 3,
# 				  'four' => 4,
# 				  'five' => 5,
# 				  'six' => 6,
# 				  'seven' => 7,
# 				  'eight' => 8,
# 				  'nine' => 9,
# 				  'ten' => 10,
# 				  'eleven' => 11,
# 				  'twelve' => 12, 
# 				  'thirteen' => 13, 
# 				  'fourteen' => 14, 
# 				  'fifteen' => 15, 
# 				  'sixteen' => 16, 
# 				  'seventeen' => 17, 
# 				  'eighteen' => 18, 
# 				  'nineteen' => 19, 
# 				  'twenty' => 20
# 				}
# end	

# 	number_hash = {'one' => 1, 
# 				  'two' => 2, 
# 				  'three' => 3,
# 				  'four' => 4,
# 				  'five' => 5,
# 				  'six' => 6,
# 				  'seven' => 7,
# 				  'eight' => 8,
# 				  'nine' => 9,
# 				  'ten' => 10,
# 				  'eleven' => 11,
# 				  'twelve' => 12, 
# 				  'thirteen' => 13, 
# 				  'fourteen' => 14, 
# 				  'fifteen' => 15, 
# 				  'sixteen' => 16, 
# 				  'seventeen' => 17, 
# 				  'eighteen' => 18, 
# 				  'nineteen' => 19, 
# 				  'twenty' => 20
# 				}

# puts number_hash["twenty"]

# def english_to_number(word_or_words)
# 	hash = {'one' => 1, 
# 			'two' => 2, 
# 			'three' => 3,
# 			'four' => 4,
# 			'five' => 5,
# 			'six' => 6,
# 			'seven' => 7,
# 			'eight' => 8,
# 			'nine' => 9,
# 			'ten' => 10,
# 			'eleven' => 11,
# 			'twelve' => 12, 
# 			'thirteen' => 13, 
# 			'fourteen' => 14, 
# 			'fifteen' => 15, 
# 			'sixteen' => 16, 
# 			'seventeen' => 17, 
# 			'eighteen' => 18, 
# 			'nineteen' => 19, 
# 			'twenty' => 20
# 		}
# 		array_of_words = word_or_words
# end

# def english_to_number(word_or_words)
# 	hash = {
# 		'one' => 1,
# 		'five' => 5,
# 		'twenty' => 20
# 	}
# 	array_of_words = word_or_words.split
# 	total = 0
# 	array_of_words.each{|string| total = total + hash[string]}
# 	total
# end

# puts english_to_number('twenty') #=> 20
# puts english_to_number('five')	#=> 5
# puts english_to_number('twenty one')
#hash['twenty'] + hash['five'] #=> 20+5
#"twenty five" ?=> "twenty", "five"


#this method will convert numbers into their equivalent Roman numeral

# class Fixnnum

# 	def to_roman
# 		"I"
# 	end
# end

# def test(input, output)
# 	if input == output
# 		puts "success!"
# 	else
# 		puts "we expercted #{output} but got #{input}"
# 	end
# end

# puts 1.to_roman #=> "I"
# puts 2.to_roman #=> "II"


# I want a function that will convert English language numbers into 
# their numerical representation.
# For example:
# english_to_number('one') #=> 1
# english_to_number('ninety six') #=> 96
# The function should at least work up to 100. 1_000_000_000_000 would be better.

def english_to_number(word_or_words)
  if word_or_words == nil #in case recursive call has no argument
  	word_or_words = ''
  end
  number_hash = {
  	'one' => 1,
  	'two' => 2,
  	'three' => 3,
  	'four' => 4,
  	'five' => 5,
  	'six' => 6,
  	'seven' => 7,
  	'eight' => 8,
  	'nine' => 9,
  	'ten' => 10,
  	'eleven' => 11,
  	'twelve' => 12,
  	'thirteen' => 13,
  	'fourteen' => 14,
  	'fifteen' => 15,
  	'sixteen' => 16,
  	'seventeen' => 17,
  	'eighteen' => 18,
  	'nineteen' => 19,
  	'twenty' => 20,
  	'thirty' => 30,
  	'forty' => 40,
  	'fifty' => 50,
  	'sixty' => 60,
  	'seventy' => 70,
  	'eighty' => 80,
  	'ninety' => 90
  }  
  if word_or_words.include?('million')
  	millions, remainder = word_or_words.split('million')
  	return english_to_number(millions) * 1_000_000 + english_to_number(remainder)
  elsif word_or_words.include?('thousand')
  	thousands, remainder = word_or_words.split('thousand')
  	return english_to_number(thousands) * 1000 + english_to_number(remainder)
  elsif word_or_words.include?('hundred')
    hundreds, remainder = word_or_words.split('hundred')
    return english_to_number(hundreds) * 100 + english_to_number(remainder)
  end
  array_of_words = word_or_words.split
  array_of_words.inject(0){|sum, string| sum + number_hash[string]}
end

puts english_to_number('one') #=> 1
puts english_to_number('twenty') #=> 20
puts english_to_number('twenty five') #=> 25
puts english_to_number('one hundred') #=> 100
puts english_to_number('six hundred thirty two') #=> 632
puts english_to_number('four thousand eight hundred twelve') #=> 4812
puts english_to_number('nine hundred seventeen million thirty six') #=> 917000036





