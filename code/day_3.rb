#I want to be able to put in a number and get back the number as a word
#I know how to create a hash and to do this but now I need to get a new number


class Fixnum
	def num_to_word
	num_hash = {
		 1 => 'one',
	  	 2 => 'two',
	  	 3 => 'three',
	  	 4 => 'four',
	  	 5 => 'five',
	  	 6 => 'six',
	  	 7 => 'seven',
	  	 8 => 'eight',
	  	 9 => 'nine',
	  	 10 => 'ten',
	  	 11 => 'eleven',
	  	 12 => 'twelve',
	  	 13 => 'thirteen',
	  	 14 => 'fourteen',
	  	 15 => 'fifteen',
	  	 16 => 'sixteen',
	  	 17 => 'seventeen',
	  	 18 => 'eighteen',
	  	 19 => 'nineteen',
	  	 20 => 'twenty',
	  	 30 => 'thirty',
	  	 40 => 'forty',
	  	 50 => 'fifty',
	  	 60 => 'sixty',
	  	 70 => 'seventy',
	  	 80 => 'eighty',
	  	 90 => 'ninety'
	}
	if self == self
		num_to_word = num_hash[self]
	else

	end
	end
end

puts 3.num_to_word
puts 4.num_to_word
puts 5.num_to_word
puts 6.num_to_word
puts 7.num_to_word
puts 8.num_to_word
puts 9.num_to_word
puts 10.num_to_word
puts 11.num_to_word
puts 12.num_to_word
puts 13.num_to_word
puts 14.num_to_word
puts 15.num_to_word
puts 16.num_to_word
puts 17.num_to_word
puts 18.num_to_word
puts 19.num_to_word
puts 20.num_to_word
puts 21.num_to_word
puts 22.num_to_word

# def englishNumber number
#   if number < 0  # No negative numbers.
#     return 'Please enter a number that isn\'t negative.'
#   end
#   if number == 0
#     return 'zero'
#   end

#   # No more special cases! No more returns!

#   numString = ''  # This is the string we will return.

#   onesPlace = ['one',     'two',       'three',    'four',     'five',
#                'six',     'seven',     'eight',    'nine']
#   tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
#                'sixty',   'seventy',   'eighty',   'ninety']
#   teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
#                'sixteen', 'seventeen', 'eighteen', 'nineteen']

#   # "left" is how much of the number we still have left to write out.
#   # "write" is the part we are writing out right now.
#   # write and left... get it?  :)
#   left  = number
#   write = left/100          # How many hundreds left to write out?
#   left  = left - write*100  # Subtract off those hundreds.

#   if write > 0
#     # Now here's a really sly trick:
#     hundreds  = englishNumber write
#     numString = numString + hundreds + ' hundred'
#     # That's called "recursion". So what did I just do?
#     # I told this method to call itself, but with "write" instead of
#     # "number". Remember that "write" is (at the moment) the number of
#     # hundreds we have to write out. After we add "hundreds" to
#     # "numString", we add the string ' hundred' after it.
#     # So, for example, if we originally called englishNumber with
#     # 1999 (so "number" = 1999), then at this point "write" would
#     # be 19, and "left" would be 99. The laziest thing to do at this
#     # point is to have englishNumber write out the 'nineteen' for us,
#     # then we write out ' hundred', and then the rest of
#     # englishNumber writes out 'ninety-nine'.

#     if left > 0
#       # So we don't write 'two hundredfifty-one'...
#       numString = numString + ' '
#     end
#   end

#   write = left/10          # How many tens left to write out?
#   left  = left - write*10  # Subtract off those tens.

#   if write > 0
#     if ((write == 1) and (left > 0))
#       # Since we can't write "tenty-two" instead of "twelve",
#       # we have to make a special exception for these.
#       numString = numString + teenagers[left-1]
#       # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

#       # Since we took care of the digit in the ones place already,
#       # we have nothing left to write.
#       left = 0
#     else
#       numString = numString + tensPlace[write-1]
#       # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
#     end

#     if left > 0
#       # So we don't write 'sixtyfour'...
#       numString = numString + '-'
#     end
#   end

#   write = left  # How many ones left to write out?
#   left  = 0     # Subtract off those ones.

#   if write > 0
#     numString = numString + onesPlace[write-1]
#     # The "-1" is because onesPlace[3] is 'four', not 'three'.
#   end

#   # Now we just return "numString"...
#   numString
# end

# puts englishNumber(  0)
# puts englishNumber(  9)
# puts englishNumber( 10)
# puts englishNumber( 11)
# puts englishNumber( 17)
# puts englishNumber( 32)
# puts englishNumber( 88)
# puts englishNumber( 99)
# puts englishNumber(100)
# puts englishNumber(101)
# puts englishNumber(234)
# puts englishNumber(3211)
# puts englishNumber(999999)
# puts englishNumber(1000000000000)