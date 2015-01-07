ROR Day 1

Intigers-

	What does it mean? An intiger is a number

	How do you make one? The method is .to_i for example "12".to_i

	Why would you want one of those? The .to_i will change any numbered "string" into an actual number

	What can you do with a range?

	#You can change a number in a string to an actual number

	"12".to_i #=> 12 

Strings-
	Deffinition: A string is a line of text wrapped in single or double quotes
	Method: The method is .to_s
	Uses: The .to_s will place an object into a string and it can be used for Concatenation

Arrays-
	Deffinition: An array is a list of items in an ordered list
	Method: The method is [] opening and closing brackets
	Uses: You can use an array to create a list of things that you may want to put in order

Hashes-
	Deffinition: A hash is collection of items without a specific order
	Method: The method is {} opening and closing curly braces
	Uses: You can use a hash to comprise a collection of items and assign key things to/about the item

Range-
	What does it mean? It's a sequence of numbers or letters that has no gaps in it.

	How do you make one? (7..11) #contains 7, 8, 9, 10, and 11.

	Why would you want one of those? You could get every year since the Declaration of Independence was signed with (1776..2015). Or if you want every day in February, that could be represented as (1..28). You could even grab every letter of the alphabet with ('a'..'z').

	What can you do with a range?

	# You can find if something is inside a range:

	(1..10).include?(5) #=> true
	(1..10).include?(300) #=> false

	# You can find out how big it is:

	(1..10).size #=> 10
	(1776..2015).size #=> 240

	# You can iterate over it:

	(13..19).each{|n| print "#{n} " } #=> 13 14 15 16 17 18 19